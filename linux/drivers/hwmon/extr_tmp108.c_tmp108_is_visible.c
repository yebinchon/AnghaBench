
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int hwmon_chip ;
 int hwmon_chip_update_interval ;
 int hwmon_temp ;
__attribute__((used)) static umode_t tmp108_is_visible(const void *data, enum hwmon_sensor_types type,
     u32 attr, int channel)
{
 if (type == hwmon_chip && attr == hwmon_chip_update_interval)
  return 0644;

 if (type != hwmon_temp)
  return 0;

 switch (attr) {
 case 134:
 case 129:
 case 132:
  return 0444;
 case 130:
 case 133:
 case 128:
 case 131:
  return 0644;
 default:
  return 0;
 }
}
