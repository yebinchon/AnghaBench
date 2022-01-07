
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int temp; int fan_down_setting; int fan_up_setting; } ;
struct TYPE_3__ {int temp; int casetemp; int downind; int upind; scalar_t__ fan_level; int fan; int thermostat; } ;


 scalar_t__ LOG_TEMP ;
 TYPE_2__* fan_table ;
 int print_temp (char*,int) ;
 int printk (char*,scalar_t__) ;
 int read_reg (int ,int,int) ;
 int tune_fan (int) ;
 TYPE_1__ x ;

__attribute__((used)) static void
poll_temp( void )
{
 int temp, i, level, casetemp;

 temp = read_reg( x.thermostat, 0, 2 );


 if( temp < 0 )
  return;

 casetemp = read_reg(x.fan, 0x0b, 1) << 8;
 casetemp |= (read_reg(x.fan, 0x06, 1) & 0x7) << 5;

 if( LOG_TEMP && x.temp != temp ) {
  print_temp("CPU-temp: ", temp );
  print_temp(", Case: ", casetemp );
  printk(",  Fan: %d\n", 11-x.fan_level );
 }
 x.temp = temp;
 x.casetemp = casetemp;

 level = -1;
 for( i=0; (temp & 0xffff) > fan_table[i].temp ; i++ )
  ;
 if( i < x.downind )
  level = fan_table[i].fan_down_setting;
 x.downind = i;

 for( i=0; (temp & 0xffff) >= fan_table[i+1].temp ; i++ )
  ;
 if( x.upind < i )
  level = fan_table[i].fan_up_setting;
 x.upind = i;

 if( level >= 0 )
  tune_fan( level );
}
