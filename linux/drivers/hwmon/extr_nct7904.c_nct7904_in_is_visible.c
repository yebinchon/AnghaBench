
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct nct7904_data {int vsen_mask; } ;


 int BIT (int) ;




 int* nct7904_chan_to_index ;

__attribute__((used)) static umode_t nct7904_in_is_visible(const void *_data, u32 attr, int channel)
{
 const struct nct7904_data *data = _data;
 int index = nct7904_chan_to_index[channel];

 switch (attr) {
 case 130:
 case 131:
  if (channel > 0 && (data->vsen_mask & BIT(index)))
   return 0444;
  break;
 case 128:
 case 129:
  if (channel > 0 && (data->vsen_mask & BIT(index)))
   return 0644;
  break;
 default:
  break;
 }

 return 0;
}
