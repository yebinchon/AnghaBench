
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u8 ;
typedef int u32 ;
struct max31790_data {int* fan_config; } ;


 int MAX31790_FAN_CFG_TACH_INPUT ;
 int NR_CHANNEL ;




__attribute__((used)) static umode_t max31790_fan_is_visible(const void *_data, u32 attr, int channel)
{
 const struct max31790_data *data = _data;
 u8 fan_config = data->fan_config[channel % NR_CHANNEL];

 switch (attr) {
 case 129:
 case 130:
  if (channel < NR_CHANNEL ||
      (fan_config & MAX31790_FAN_CFG_TACH_INPUT))
   return 0444;
  return 0;
 case 128:
  if (channel < NR_CHANNEL &&
      !(fan_config & MAX31790_FAN_CFG_TACH_INPUT))
   return 0644;
  return 0;
 default:
  return 0;
 }
}
