
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u16 ;
struct pmbus_sensor {size_t class; int convert; } ;
struct pmbus_data {TYPE_1__* info; } ;
struct TYPE_2__ {int* format; } ;




 long pmbus_data2reg_direct (struct pmbus_data*,struct pmbus_sensor*,long) ;
 long pmbus_data2reg_linear (struct pmbus_data*,struct pmbus_sensor*,long) ;
 long pmbus_data2reg_vid (struct pmbus_data*,struct pmbus_sensor*,long) ;


__attribute__((used)) static u16 pmbus_data2reg(struct pmbus_data *data,
     struct pmbus_sensor *sensor, long val)
{
 u16 regval;

 if (!sensor->convert)
  return val;

 switch (data->info->format[sensor->class]) {
 case 130:
  regval = pmbus_data2reg_direct(data, sensor, val);
  break;
 case 128:
  regval = pmbus_data2reg_vid(data, sensor, val);
  break;
 case 129:
 default:
  regval = pmbus_data2reg_linear(data, sensor, val);
  break;
 }
 return regval;
}
