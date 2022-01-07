
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_sensor {long data; size_t class; int convert; } ;
struct pmbus_data {TYPE_1__* info; } ;
struct TYPE_2__ {int* format; } ;




 long pmbus_reg2data_direct (struct pmbus_data*,struct pmbus_sensor*) ;
 long pmbus_reg2data_linear (struct pmbus_data*,struct pmbus_sensor*) ;
 long pmbus_reg2data_vid (struct pmbus_data*,struct pmbus_sensor*) ;


__attribute__((used)) static long pmbus_reg2data(struct pmbus_data *data, struct pmbus_sensor *sensor)
{
 long val;

 if (!sensor->convert)
  return sensor->data;

 switch (data->info->format[sensor->class]) {
 case 130:
  val = pmbus_reg2data_direct(data, sensor);
  break;
 case 128:
  val = pmbus_reg2data_vid(data, sensor);
  break;
 case 129:
 default:
  val = pmbus_reg2data_linear(data, sensor);
  break;
 }
 return val;
}
