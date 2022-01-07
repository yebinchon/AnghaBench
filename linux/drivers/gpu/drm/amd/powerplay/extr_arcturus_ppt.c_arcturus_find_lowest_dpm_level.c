
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct arcturus_single_dpm_table {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_2__ {int enabled; } ;



__attribute__((used)) static uint32_t arcturus_find_lowest_dpm_level(struct arcturus_single_dpm_table *table)
{
 uint32_t i;

 for (i = 0; i < table->count; i++) {
  if (table->dpm_levels[i].enabled)
   break;
 }
 if (i >= table->count) {
  i = 0;
  table->dpm_levels[i].enabled = 1;
 }

 return i;
}
