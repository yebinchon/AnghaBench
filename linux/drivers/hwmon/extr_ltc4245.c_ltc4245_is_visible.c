
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct ltc4245_data {int use_extra_gpios; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
__attribute__((used)) static umode_t ltc4245_is_visible(const void *_data,
      enum hwmon_sensor_types type,
      u32 attr, int channel)
{
 const struct ltc4245_data *data = _data;

 switch (type) {
 case 132:
  if (channel == 0)
   return 0;
  switch (attr) {
  case 131:
   if (channel > 9 && !data->use_extra_gpios)
    return 0;
   return 0444;
  case 130:
   if (channel > 8)
    return 0;
   return 0444;
  default:
   return 0;
  }
 case 135:
  switch (attr) {
  case 134:
  case 133:
   return 0444;
  default:
   return 0;
  }
 case 129:
  switch (attr) {
  case 128:
   return 0444;
  default:
   return 0;
  }
 default:
  return 0;
 }
}
