
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int hwmon_in ;

__attribute__((used)) static int hwmon_attr_base(enum hwmon_sensor_types type)
{
 if (type == hwmon_in)
  return 0;
 return 1;
}
