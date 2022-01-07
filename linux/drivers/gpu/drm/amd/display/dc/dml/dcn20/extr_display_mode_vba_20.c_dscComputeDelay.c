
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum output_format_class { ____Placeholder_output_format_class } output_format_class ;


 int dm_420 ;
 int dm_n422 ;

__attribute__((used)) static unsigned int dscComputeDelay(enum output_format_class pixelFormat)
{
 unsigned int Delay = 0;

 if (pixelFormat == dm_420) {

  Delay = Delay + 2;

  Delay = Delay + 0;

  Delay = Delay + 3;

  Delay = Delay + 2;

  Delay = Delay + 12;

  Delay = Delay + 13;

  Delay = Delay + 2;

  Delay = Delay + 7;

  Delay = Delay + 3;

  Delay = Delay + 2;

  Delay = Delay + 1;

  Delay = Delay + 1;
 } else if (pixelFormat == dm_n422) {

  Delay = Delay + 2;

  Delay = Delay + 1;

  Delay = Delay + 5;

  Delay = Delay + 25;

  Delay = Delay + 2;

  Delay = Delay + 10;

  Delay = Delay + 2;

  Delay = Delay + 1;

  Delay = Delay + 1;
 } else {

  Delay = Delay + 2;

  Delay = Delay + 0;

  Delay = Delay + 3;

  Delay = Delay + 12;

  Delay = Delay + 2;

  Delay = Delay + 7;

  Delay = Delay + 1;

  Delay = Delay + 2;

  Delay = Delay + 1;
 }

 return Delay;
}
