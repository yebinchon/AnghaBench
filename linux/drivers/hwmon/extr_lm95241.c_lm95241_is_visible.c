
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
__attribute__((used)) static umode_t lm95241_is_visible(const void *data,
      enum hwmon_sensor_types type,
      u32 attr, int channel)
{
 switch (type) {
 case 135:
  switch (attr) {
  case 134:
   return 0644;
  }
  break;
 case 133:
  switch (attr) {
  case 131:
   return 0444;
  case 132:
   return 0444;
  case 129:
  case 130:
  case 128:
   return 0644;
  }
  break;
 default:
  break;
 }
 return 0;
}
