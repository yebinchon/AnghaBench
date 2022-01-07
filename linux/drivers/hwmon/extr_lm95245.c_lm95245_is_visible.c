
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;





 int lm95245_temp_is_visible (void const*,int ,int) ;

__attribute__((used)) static umode_t lm95245_is_visible(const void *data,
      enum hwmon_sensor_types type,
      u32 attr, int channel)
{
 switch (type) {
 case 130:
  switch (attr) {
  case 129:
   return 0644;
  default:
   return 0;
  }
 case 128:
  return lm95245_temp_is_visible(data, attr, channel);
 default:
  return 0;
 }
}
