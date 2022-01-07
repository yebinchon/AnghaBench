
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vi_dpm_table {int count; TYPE_1__* dpm_level; } ;
typedef int int32_t ;
struct TYPE_2__ {scalar_t__ enabled; } ;



int32_t phm_get_dpm_level_enable_mask_value(void *table)
{
 int32_t i;
 int32_t mask = 0;
 struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;

 for (i = dpm_table->count; i > 0; i--) {
  mask = mask << 1;
  if (dpm_table->dpm_level[i - 1].enabled)
   mask |= 0x1;
  else
   mask &= 0xFFFFFFFE;
 }

 return mask;
}
