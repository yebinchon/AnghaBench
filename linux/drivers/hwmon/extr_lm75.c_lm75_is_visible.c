
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
typedef int u32 ;
struct lm75_data {TYPE_1__* params; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
struct TYPE_2__ {int num_sample_times; } ;
__attribute__((used)) static umode_t lm75_is_visible(const void *data, enum hwmon_sensor_types type,
          u32 attr, int channel)
{
 const struct lm75_data *config_data = data;

 switch (type) {
 case 133:
  switch (attr) {
  case 132:
   if (config_data->params->num_sample_times > 1)
    return 0644;
   return 0444;
  }
  break;
 case 131:
  switch (attr) {
  case 130:
   return 0444;
  case 129:
  case 128:
   return 0644;
  }
  break;
 default:
  break;
 }
 return 0;
}
