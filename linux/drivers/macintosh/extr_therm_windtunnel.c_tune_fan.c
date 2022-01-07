
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fan_level; scalar_t__ casetemp; scalar_t__ temp; int fan; } ;


 int print_temp (char*,scalar_t__) ;
 int printk (char*,int,int) ;
 int write_reg (int ,int,int,int) ;
 TYPE_1__ x ;

__attribute__((used)) static void
tune_fan( int fan_setting )
{
 int val = (fan_setting << 3) | 7;


 write_reg( x.fan, 0x25, val, 1 );
 write_reg( x.fan, 0x20, 0, 1 );
 print_temp("CPU-temp: ", x.temp );
 if( x.casetemp )
  print_temp(", Case: ", x.casetemp );
 printk(",  Fan: %d (tuned %+d)\n", 11-fan_setting, x.fan_level-fan_setting );

 x.fan_level = fan_setting;
}
