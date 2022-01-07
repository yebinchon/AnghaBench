
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct vi_dpm_table {size_t count; TYPE_1__* dpm_level; } ;
struct TYPE_2__ {size_t value; } ;


 int EINVAL ;

int phm_find_boot_level(void *table,
  uint32_t value, uint32_t *boot_level)
{
 int result = -EINVAL;
 uint32_t i;
 struct vi_dpm_table *dpm_table = (struct vi_dpm_table *)table;

 for (i = 0; i < dpm_table->count; i++) {
  if (value == dpm_table->dpm_level[i].value) {
   *boot_level = i;
   result = 0;
  }
 }

 return result;
}
