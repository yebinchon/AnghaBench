
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;




 int npcm7xx_fan_is_visible (void const*,int ,int) ;
 int npcm7xx_pwm_is_visible (void const*,int ,int) ;

__attribute__((used)) static umode_t npcm7xx_is_visible(const void *data,
      enum hwmon_sensor_types type,
      u32 attr, int channel)
{
 switch (type) {
 case 128:
  return npcm7xx_pwm_is_visible(data, attr, channel);
 case 129:
  return npcm7xx_fan_is_visible(data, attr, channel);
 default:
  return 0;
 }
}
