requires "perl" => 5.020_003;

requires "Data::Dump";
requires "JSON::XS";
requires "HTTP::Status";
requires "File::Basename";
requires "File::Spec";
requires "File::Find";
requires "File::Slurper";
requires "List::Util" => "1.33";
requires "lib::abs" => "0.93";

requires "Scalar::Util";

# Postgres!
requires "DBD::Pg";
requires "DBIx::Class";
requires "App::Sqitch" => "0.9994";

# Mojo based Perl project
requires "Mojolicious" => "7.30";
requires "Mojolicious::Plugin::Model";
requires "Starman";

on test => sub {
    requires "Test::More";
    requires "Test::Exception";
    requires "Test::Spec";
};

on develop => sub {
    requires "Devel::REPL";
    requires "Devel::NYTProf";
    requires "Perl::Critic";
    requires "Perl::Tidy";
    requires "Term::ANSIColor"; # Colored prove
    requires "Term::ReadLine::Perl"; # REPL
};
