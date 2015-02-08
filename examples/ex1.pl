#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use PYX::XMLNorm;

# Example data.
my $pyx = <<'END';
(begin
(middle
(end
-data
)middle
)begin
END

# Object.
my $obj = PYX::XMLNorm->new(
        'rules' => {
                'middle' => ['end'],
        },
);

# Nomrmalize..
$obj->parse($pyx);

# Output:
# (begin
# (middle
# (end
# -data
# )end
# )middle
# )begin