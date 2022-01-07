
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;






 int nct7904_fan_is_visible (void const*,int ,int) ;
 int nct7904_in_is_visible (void const*,int ,int) ;
 int nct7904_pwm_is_visible (void const*,int ,int) ;
 int nct7904_temp_is_visible (void const*,int ,int) ;

__attribute__((used)) static umode_t nct7904_is_visible(const void *data,
      enum hwmon_sensor_types type,
      u32 attr, int channel)
{
 switch (type) {
 case 130:
  return nct7904_in_is_visible(data, attr, channel);
 case 131:
  return nct7904_fan_is_visible(data, attr, channel);
 case 129:
  return nct7904_pwm_is_visible(data, attr, channel);
 case 128:
  return nct7904_temp_is_visible(data, attr, channel);
 default:
  return 0;
 }
}
