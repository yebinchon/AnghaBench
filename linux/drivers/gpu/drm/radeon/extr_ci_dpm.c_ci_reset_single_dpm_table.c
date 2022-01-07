
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct ci_single_dpm_table {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_2__ {int enabled; } ;


 size_t MAX_REGULAR_DPM_NUMBER ;

__attribute__((used)) static void ci_reset_single_dpm_table(struct radeon_device *rdev,
          struct ci_single_dpm_table* dpm_table,
          u32 count)
{
 u32 i;

 dpm_table->count = count;
 for (i = 0; i < MAX_REGULAR_DPM_NUMBER; i++)
  dpm_table->dpm_levels[i].enabled = 0;
}
