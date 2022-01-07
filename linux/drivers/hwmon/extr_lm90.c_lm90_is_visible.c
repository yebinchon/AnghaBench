
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;




 int lm90_chip_is_visible (void const*,int ,int) ;
 int lm90_temp_is_visible (void const*,int ,int) ;

__attribute__((used)) static umode_t lm90_is_visible(const void *data, enum hwmon_sensor_types type,
          u32 attr, int channel)
{
 switch (type) {
 case 129:
  return lm90_chip_is_visible(data, attr, channel);
 case 128:
  return lm90_temp_is_visible(data, attr, channel);
 default:
  return 0;
 }
}
