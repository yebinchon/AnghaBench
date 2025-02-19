
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_4__ {int pcie_speed_table; int mclk_table; int sclk_table; } ;
struct TYPE_3__ {int mclk_dpm_enable_mask; void* pcie_dpm_enable_mask; void* sclk_dpm_enable_mask; } ;
struct ci_power_info {int last_mclk_dpm_enable_mask; TYPE_2__ dpm_table; TYPE_1__ dpm_level_enable_mask; scalar_t__ uvd_enabled; } ;


 void* ci_get_dpm_level_enable_mask_value (int *) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_trim_dpm_states (struct radeon_device*,struct radeon_ps*) ;

__attribute__((used)) static int ci_generate_dpm_level_enable_mask(struct radeon_device *rdev,
          struct radeon_ps *radeon_state)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 int ret;

 ret = ci_trim_dpm_states(rdev, radeon_state);
 if (ret)
  return ret;

 pi->dpm_level_enable_mask.sclk_dpm_enable_mask =
  ci_get_dpm_level_enable_mask_value(&pi->dpm_table.sclk_table);
 pi->dpm_level_enable_mask.mclk_dpm_enable_mask =
  ci_get_dpm_level_enable_mask_value(&pi->dpm_table.mclk_table);
 pi->last_mclk_dpm_enable_mask =
  pi->dpm_level_enable_mask.mclk_dpm_enable_mask;
 if (pi->uvd_enabled) {
  if (pi->dpm_level_enable_mask.mclk_dpm_enable_mask & 1)
   pi->dpm_level_enable_mask.mclk_dpm_enable_mask &= 0xFFFFFFFE;
 }
 pi->dpm_level_enable_mask.pcie_dpm_enable_mask =
  ci_get_dpm_level_enable_mask_value(&pi->dpm_table.pcie_speed_table);

 return 0;
}
