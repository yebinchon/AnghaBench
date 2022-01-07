
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;





__attribute__((used)) static umode_t tmp421_is_visible(const void *data, enum hwmon_sensor_types type,
     u32 attr, int channel)
{
 switch (attr) {
 case 129:
  if (channel == 0)
   return 0;
  return 0444;
 case 128:
  return 0444;
 default:
  return 0;
 }
}
