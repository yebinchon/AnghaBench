
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct radeon_device {scalar_t__ family; } ;
struct TYPE_9__ {int count; } ;
struct TYPE_8__ {TYPE_4__ pcie_speed_table; } ;
struct TYPE_7__ {int max; int min; } ;
struct TYPE_6__ {int max; int min; } ;
struct ci_power_info {TYPE_3__ dpm_table; TYPE_2__ pcie_lane_performance; TYPE_1__ pcie_gen_performance; TYPE_2__ pcie_lane_powersaving; TYPE_1__ pcie_gen_powersaving; scalar_t__ use_pcie_powersaving_levels; scalar_t__ use_pcie_performance_levels; } ;


 scalar_t__ CHIP_BONAIRE ;
 int EINVAL ;
 int SMU7_MAX_LEVELS_LINK ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_reset_single_dpm_table (struct radeon_device*,TYPE_4__*,int ) ;
 int ci_setup_pcie_table_entry (TYPE_4__*,int,int ,int ) ;

__attribute__((used)) static int ci_setup_default_pcie_tables(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);

 if (!pi->use_pcie_performance_levels && !pi->use_pcie_powersaving_levels)
  return -EINVAL;

 if (pi->use_pcie_performance_levels && !pi->use_pcie_powersaving_levels) {
  pi->pcie_gen_powersaving = pi->pcie_gen_performance;
  pi->pcie_lane_powersaving = pi->pcie_lane_performance;
 } else if (!pi->use_pcie_performance_levels && pi->use_pcie_powersaving_levels) {
  pi->pcie_gen_performance = pi->pcie_gen_powersaving;
  pi->pcie_lane_performance = pi->pcie_lane_powersaving;
 }

 ci_reset_single_dpm_table(rdev,
      &pi->dpm_table.pcie_speed_table,
      SMU7_MAX_LEVELS_LINK);

 if (rdev->family == CHIP_BONAIRE)
  ci_setup_pcie_table_entry(&pi->dpm_table.pcie_speed_table, 0,
       pi->pcie_gen_powersaving.min,
       pi->pcie_lane_powersaving.max);
 else
  ci_setup_pcie_table_entry(&pi->dpm_table.pcie_speed_table, 0,
       pi->pcie_gen_powersaving.min,
       pi->pcie_lane_powersaving.min);
 ci_setup_pcie_table_entry(&pi->dpm_table.pcie_speed_table, 1,
      pi->pcie_gen_performance.min,
      pi->pcie_lane_performance.min);
 ci_setup_pcie_table_entry(&pi->dpm_table.pcie_speed_table, 2,
      pi->pcie_gen_powersaving.min,
      pi->pcie_lane_powersaving.max);
 ci_setup_pcie_table_entry(&pi->dpm_table.pcie_speed_table, 3,
      pi->pcie_gen_performance.min,
      pi->pcie_lane_performance.max);
 ci_setup_pcie_table_entry(&pi->dpm_table.pcie_speed_table, 4,
      pi->pcie_gen_powersaving.max,
      pi->pcie_lane_powersaving.max);
 ci_setup_pcie_table_entry(&pi->dpm_table.pcie_speed_table, 5,
      pi->pcie_gen_performance.max,
      pi->pcie_lane_performance.max);

 pi->dpm_table.pcie_speed_table.count = 6;

 return 0;
}
