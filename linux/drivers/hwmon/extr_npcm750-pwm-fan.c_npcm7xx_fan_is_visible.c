
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct npcm7xx_pwm_fan_data {int * fan_present; } ;




__attribute__((used)) static umode_t npcm7xx_fan_is_visible(const void *_data, u32 attr, int channel)
{
 const struct npcm7xx_pwm_fan_data *data = _data;

 if (!data->fan_present[channel])
  return 0;

 switch (attr) {
 case 128:
  return 0444;
 default:
  return 0;
 }
}
