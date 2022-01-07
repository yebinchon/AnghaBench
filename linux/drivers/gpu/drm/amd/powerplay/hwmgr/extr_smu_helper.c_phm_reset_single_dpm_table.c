
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vi_dpm_table {int count; TYPE_1__* dpm_level; } ;
struct TYPE_2__ {int enabled; } ;



int phm_reset_single_dpm_table(void *table,
    uint32_t count, int max)
{
 int i;

 struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;

 dpm_table->count = count > max ? max : count;

 for (i = 0; i < dpm_table->count; i++)
  dpm_table->dpm_level[i].enabled = 0;

 return 0;
}
