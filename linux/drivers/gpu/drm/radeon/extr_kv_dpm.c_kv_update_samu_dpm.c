
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct radeon_clock_voltage_dependency_table {int count; } ;
struct TYPE_4__ {struct radeon_clock_voltage_dependency_table samu_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct kv_power_info {int samu_boot_level; scalar_t__ caps_stable_p_state; int sram_end; scalar_t__ dpm_table_start; } ;


 int PPSMC_MSG_SAMUDPM_SetEnabledMask ;
 int SMU7_Fusion_DpmTable ;
 int SamuBootLevel ;
 int kv_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int *,int,int ) ;
 int kv_enable_samu_dpm (struct radeon_device*,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_update_samu_dpm(struct radeon_device *rdev, bool gate)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 struct radeon_clock_voltage_dependency_table *table =
  &rdev->pm.dpm.dyn_state.samu_clock_voltage_dependency_table;
 int ret;

 if (!gate) {
  if (pi->caps_stable_p_state)
   pi->samu_boot_level = table->count - 1;
  else
   pi->samu_boot_level = 0;

  ret = kv_copy_bytes_to_smc(rdev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, SamuBootLevel),
        (u8 *)&pi->samu_boot_level,
        sizeof(u8),
        pi->sram_end);
  if (ret)
   return ret;

  if (pi->caps_stable_p_state)
   kv_send_msg_to_smc_with_parameter(rdev,
         PPSMC_MSG_SAMUDPM_SetEnabledMask,
         (1 << pi->samu_boot_level));
 }

 return kv_enable_samu_dpm(rdev, !gate);
}
