
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct pmbus_sensor {int dummy; } ;
struct pmbus_data {int dummy; } ;


 scalar_t__ DIV_ROUND_CLOSEST (int,int) ;
 long clamp_val (long,int,int) ;

__attribute__((used)) static u16 pmbus_data2reg_vid(struct pmbus_data *data,
         struct pmbus_sensor *sensor, long val)
{
 val = clamp_val(val, 500, 1600);

 return 2 + DIV_ROUND_CLOSEST((1600 - val) * 100, 625);
}
