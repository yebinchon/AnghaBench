
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct ci_single_dpm_table {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_2__ {size_t value; int enabled; } ;



__attribute__((used)) static void ci_trim_single_dpm_states(struct radeon_device *rdev,
          struct ci_single_dpm_table *dpm_table,
          u32 low_limit, u32 high_limit)
{
 u32 i;

 for (i = 0; i < dpm_table->count; i++) {
  if ((dpm_table->dpm_levels[i].value < low_limit) ||
      (dpm_table->dpm_levels[i].value > high_limit))
   dpm_table->dpm_levels[i].enabled = 0;
  else
   dpm_table->dpm_levels[i].enabled = 1;
 }
}
