require File.expand_path(File.dirname(__FILE__) + '/lib/acts_as_xlsx/version.rb')

Gem::Specification.new do |s|
  s.name        = 'acts_as_xlsx'
  s.version     =  Axlsx::Ar::VERSION
  s.author	= "Randy Morgan"
  s.email       = 'digital.ipseity@gmail.com'
  s.homepage 	= 'https://github.com/randym/acts_as_xlsx'
  s.platform    = Gem::Platform::RUBY       	     	  
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = "ActiveRecord support for Axlsx"
  s.has_rdoc    = 'acts_as_xlsx'
  s.description = <<-eof
    acts_as_xlsx lets you turn any ActiveRecord::Base inheriting class into an excel spreadsheet.
    It can be added to any finder method or scope chain and can use localized column and sheet names with I18n.
  eof
  s.files = Dir.glob("{lib/**/*}") + %w{ LICENSE README.md Rakefile CHANGELOG.md .yardopts }
  s.test_files  = Dir.glob("{test/**/*}")

  s.add_runtime_dependency 'activerecord', '>= 2.3.9'
  s.add_runtime_dependency 'i18n', '>= 0.4.1'
  
  if RUBY_VERSION == "2.0.0"
    s.add_development_dependency 'rake'
    s.add_development_dependency 'minitest'
  end
  s.add_development_dependency 'rake', "0.8.7" if RUBY_VERSION == "1.9.2"
  s.add_development_dependency 'rake', "~> 0.9" if ["1.9.3", "1.8.7"].include?(RUBY_VERSION)
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'sqlite3', "~> 1.3.5"
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rdiscount'

  s.required_ruby_version = '>= 1.8.7'
  s.require_path = 'lib'
end
