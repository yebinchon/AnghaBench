
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_ff_private_data {int num_effects; int* effect_ids; } ;



__attribute__((used)) static u8 hidpp_ff_find_effect(struct hidpp_ff_private_data *data, int effect_id)
{
 int i;

 for (i = 0; i < data->num_effects; i++)
  if (data->effect_ids[i] == effect_id)
   return i+1;

 return 0;
}
