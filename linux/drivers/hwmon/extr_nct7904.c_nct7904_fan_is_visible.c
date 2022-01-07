
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct nct7904_data {int fanin_mask; } ;






__attribute__((used)) static umode_t nct7904_fan_is_visible(const void *_data, u32 attr, int channel)
{
 const struct nct7904_data *data = _data;

 switch (attr) {
 case 129:
 case 130:
  if (data->fanin_mask & (1 << channel))
   return 0444;
  break;
 case 128:
  if (data->fanin_mask & (1 << channel))
   return 0644;
  break;
 default:
  break;
 }

 return 0;
}
