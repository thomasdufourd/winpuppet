class elasticsearch {
	windowsfunctions::port { 'elasticsearch':
		number    => 9200,
		enableTcp => true,
	}

	nirvanaservice::service {'elasticsearch': 
		config			=> "puppet:///modules/elasticsearch/elasticsearch-1.3.4.json",
		ensure          => '1.3.4',
		pkgName         => 'elasticsearch',
		source          => 'https://www.myget.org/F/crazy-choco/',
		install_options => ['-pre'],
		require			=> Package['java-server-jre']
	}
}