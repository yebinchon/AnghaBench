
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct kv_power_info {int acp_boot_level; scalar_t__ caps_stable_p_state; int sram_end; scalar_t__ dpm_table_start; } ;
struct amdgpu_clock_voltage_dependency_table {int count; } ;
struct TYPE_4__ {struct amdgpu_clock_voltage_dependency_table acp_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int AcpBootLevel ;
 int PPSMC_MSG_ACPDPM_SetEnabledMask ;
 int SMU7_Fusion_DpmTable ;
 int amdgpu_kv_copy_bytes_to_smc (struct amdgpu_device*,scalar_t__,int *,int,int ) ;
 int amdgpu_kv_send_msg_to_smc_with_parameter (struct amdgpu_device*,int ,int) ;
 int kv_enable_acp_dpm (struct amdgpu_device*,int) ;
 int kv_get_acp_boot_level (struct amdgpu_device*) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_update_acp_dpm(struct amdgpu_device *adev, bool gate)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 struct amdgpu_clock_voltage_dependency_table *table =
  &adev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table;
 int ret;

 if (!gate) {
  if (pi->caps_stable_p_state)
   pi->acp_boot_level = table->count - 1;
  else
   pi->acp_boot_level = kv_get_acp_boot_level(adev);

  ret = amdgpu_kv_copy_bytes_to_smc(adev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, AcpBootLevel),
        (u8 *)&pi->acp_boot_level,
        sizeof(u8),
        pi->sram_end);
  if (ret)
   return ret;

  if (pi->caps_stable_p_state)
   amdgpu_kv_send_msg_to_smc_with_parameter(adev,
         PPSMC_MSG_ACPDPM_SetEnabledMask,
         (1 << pi->acp_boot_level));
 }

 return kv_enable_acp_dpm(adev, !gate);
}
