
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct nct7904_data {int tcpu_mask; int has_dts; } ;


 int BIT (int) ;
__attribute__((used)) static umode_t nct7904_temp_is_visible(const void *_data, u32 attr, int channel)
{
 const struct nct7904_data *data = _data;

 switch (attr) {
 case 131:
 case 134:
 case 128:
  if (channel < 5) {
   if (data->tcpu_mask & BIT(channel))
    return 0444;
  } else {
   if (data->has_dts & BIT(channel - 5))
    return 0444;
  }
  break;
 case 130:
 case 129:
 case 133:
 case 132:
  if (channel < 5) {
   if (data->tcpu_mask & BIT(channel))
    return 0644;
  } else {
   if (data->has_dts & BIT(channel - 5))
    return 0644;
  }
  break;
 default:
  break;
 }

 return 0;
}
