
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct max6621_data {scalar_t__* input_chan2reg; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
__attribute__((used)) static umode_t
max6621_is_visible(const void *data, enum hwmon_sensor_types type, u32 attr,
     int channel)
{

 if (((struct max6621_data *)data)->input_chan2reg[channel] < 0)
  return 0;

 switch (type) {
 case 133:
  switch (attr) {
  case 130:
  case 129:
  case 131:
   return 0444;
  case 128:
  case 132:
   return 0644;
  default:
   break;
  }

 default:
  break;
 }

 return 0;
}
