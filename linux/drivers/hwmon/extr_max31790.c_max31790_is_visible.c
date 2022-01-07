
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;




 int max31790_fan_is_visible (void const*,int ,int) ;
 int max31790_pwm_is_visible (void const*,int ,int) ;

__attribute__((used)) static umode_t max31790_is_visible(const void *data,
       enum hwmon_sensor_types type,
       u32 attr, int channel)
{
 switch (type) {
 case 129:
  return max31790_fan_is_visible(data, attr, channel);
 case 128:
  return max31790_pwm_is_visible(data, attr, channel);
 default:
  return 0;
 }
}
