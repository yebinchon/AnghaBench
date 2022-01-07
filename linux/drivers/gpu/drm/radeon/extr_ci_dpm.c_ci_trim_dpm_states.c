
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ci_ps {int performance_level_count; TYPE_2__* performance_levels; } ;
struct TYPE_3__ {int mclk_table; int sclk_table; } ;
struct ci_power_info {TYPE_1__ dpm_table; } ;
struct TYPE_4__ {int pcie_lane; int pcie_gen; int mclk; int sclk; } ;


 int EINVAL ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 struct ci_ps* ci_get_ps (struct radeon_ps*) ;
 int ci_trim_pcie_dpm_states (struct radeon_device*,int ,int ,int ,int ) ;
 int ci_trim_single_dpm_states (struct radeon_device*,int *,int ,int ) ;

__attribute__((used)) static int ci_trim_dpm_states(struct radeon_device *rdev,
         struct radeon_ps *radeon_state)
{
 struct ci_ps *state = ci_get_ps(radeon_state);
 struct ci_power_info *pi = ci_get_pi(rdev);
 u32 high_limit_count;

 if (state->performance_level_count < 1)
  return -EINVAL;

 if (state->performance_level_count == 1)
  high_limit_count = 0;
 else
  high_limit_count = 1;

 ci_trim_single_dpm_states(rdev,
      &pi->dpm_table.sclk_table,
      state->performance_levels[0].sclk,
      state->performance_levels[high_limit_count].sclk);

 ci_trim_single_dpm_states(rdev,
      &pi->dpm_table.mclk_table,
      state->performance_levels[0].mclk,
      state->performance_levels[high_limit_count].mclk);

 ci_trim_pcie_dpm_states(rdev,
    state->performance_levels[0].pcie_gen,
    state->performance_levels[0].pcie_lane,
    state->performance_levels[high_limit_count].pcie_gen,
    state->performance_levels[high_limit_count].pcie_lane);

 return 0;
}
