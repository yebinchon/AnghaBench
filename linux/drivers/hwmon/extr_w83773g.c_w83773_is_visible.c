
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
__attribute__((used)) static umode_t w83773_is_visible(const void *data, enum hwmon_sensor_types type,
     u32 attr, int channel)
{
 switch (type) {
 case 133:
  switch (attr) {
  case 132:
   return 0644;
  }
  break;
 case 131:
  switch (attr) {
  case 129:
  case 130:
   return 0444;
  case 128:
   return 0644;
  }
  break;
 default:
  break;
 }
 return 0;
}
