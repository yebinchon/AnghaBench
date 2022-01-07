
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct radeon_vce_clock_voltage_dependency_table {int count; } ;
struct radeon_ps {scalar_t__ evclk; } ;
struct TYPE_4__ {struct radeon_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct kv_power_info {int vce_boot_level; scalar_t__ caps_stable_p_state; int sram_end; scalar_t__ dpm_table_start; } ;


 int PPSMC_MSG_VCEDPM_SetEnabledMask ;
 int RADEON_CG_BLOCK_VCE ;
 int SMU7_Fusion_DpmTable ;
 int VceBootLevel ;
 int cik_update_cg (struct radeon_device*,int ,int) ;
 int kv_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int *,int,int ) ;
 int kv_dpm_powergate_vce (struct radeon_device*,int) ;
 int kv_enable_vce_dpm (struct radeon_device*,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_get_vce_boot_level (struct radeon_device*,scalar_t__) ;
 int kv_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_update_vce_dpm(struct radeon_device *rdev,
        struct radeon_ps *radeon_new_state,
        struct radeon_ps *radeon_current_state)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 struct radeon_vce_clock_voltage_dependency_table *table =
  &rdev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
 int ret;

 if (radeon_new_state->evclk > 0 && radeon_current_state->evclk == 0) {
  kv_dpm_powergate_vce(rdev, 0);

  cik_update_cg(rdev, RADEON_CG_BLOCK_VCE, 0);
  if (pi->caps_stable_p_state)
   pi->vce_boot_level = table->count - 1;
  else
   pi->vce_boot_level = kv_get_vce_boot_level(rdev, radeon_new_state->evclk);

  ret = kv_copy_bytes_to_smc(rdev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, VceBootLevel),
        (u8 *)&pi->vce_boot_level,
        sizeof(u8),
        pi->sram_end);
  if (ret)
   return ret;

  if (pi->caps_stable_p_state)
   kv_send_msg_to_smc_with_parameter(rdev,
         PPSMC_MSG_VCEDPM_SetEnabledMask,
         (1 << pi->vce_boot_level));

  kv_enable_vce_dpm(rdev, 1);
 } else if (radeon_new_state->evclk == 0 && radeon_current_state->evclk > 0) {
  kv_enable_vce_dpm(rdev, 0);

  cik_update_cg(rdev, RADEON_CG_BLOCK_VCE, 1);
  kv_dpm_powergate_vce(rdev, 1);
 }

 return 0;
}
