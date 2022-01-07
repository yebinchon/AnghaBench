
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ci_single_dpm_table {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_2__ {size_t value; } ;


 int EINVAL ;

__attribute__((used)) static int ci_find_boot_level(struct ci_single_dpm_table *table,
         u32 value, u32 *boot_level)
{
 u32 i;
 int ret = -EINVAL;

 for(i = 0; i < table->count; i++) {
  if (value == table->dpm_levels[i].value) {
   *boot_level = i;
   ret = 0;
  }
 }

 return ret;
}
