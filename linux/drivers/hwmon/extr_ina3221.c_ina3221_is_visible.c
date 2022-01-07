
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct ina3221_input {int label; } ;
struct ina3221_data {struct ina3221_input* inputs; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int INA3221_CHANNEL3 ;
__attribute__((used)) static umode_t ina3221_is_visible(const void *drvdata,
      enum hwmon_sensor_types type,
      u32 attr, int channel)
{
 const struct ina3221_data *ina = drvdata;
 const struct ina3221_input *input = ((void*)0);

 switch (type) {
 case 140:
  switch (attr) {
  case 139:
  case 138:
   return 0644;
  default:
   return 0;
  }
 case 131:

  if (channel == 0)
   return 0;

  switch (attr) {
  case 128:
   if (channel - 1 <= INA3221_CHANNEL3)
    input = &ina->inputs[channel - 1];

   return (input && input->label) ? 0444 : 0;
  case 129:
   return 0444;
  case 130:
   return 0644;
  default:
   return 0;
  }
 case 137:
  switch (attr) {
  case 134:
  case 135:
  case 132:
   return 0444;
  case 136:
  case 133:
   return 0644;
  default:
   return 0;
  }
 default:
  return 0;
 }
}
