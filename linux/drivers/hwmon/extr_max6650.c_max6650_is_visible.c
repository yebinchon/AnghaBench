
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct max6650_data {int nr_fans; int alarm_en; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int MAX6650_ALRM_MAX ;
 int MAX6650_ALRM_MIN ;
 int MAX6650_ALRM_TACH ;
__attribute__((used)) static umode_t max6650_is_visible(const void *_data,
      enum hwmon_sensor_types type, u32 attr,
      int channel)
{
 const struct max6650_data *data = _data;

 if (channel && (channel >= data->nr_fans || type != 137))
  return 0;

 switch (type) {
 case 137:
  switch (attr) {
  case 134:
   return 0444;
  case 131:
  case 136:
   return 0644;
  case 132:
   if (data->alarm_en & MAX6650_ALRM_MIN)
    return 0444;
   break;
  case 133:
   if (data->alarm_en & MAX6650_ALRM_MAX)
    return 0444;
   break;
  case 135:
   if (data->alarm_en & MAX6650_ALRM_TACH)
    return 0444;
   break;
  default:
   break;
  }
  break;
 case 130:
  switch (attr) {
  case 128:
  case 129:
   return 0644;
  default:
   break;
  }
  break;
 default:
  break;
 }
 return 0;
}
