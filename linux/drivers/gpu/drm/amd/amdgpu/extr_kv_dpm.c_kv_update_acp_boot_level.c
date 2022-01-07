
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct kv_power_info {int acp_boot_level; int caps_stable_p_state; } ;
struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_ACPDPM_SetEnabledMask ;
 int amdgpu_kv_send_msg_to_smc_with_parameter (struct amdgpu_device*,int ,int) ;
 int kv_get_acp_boot_level (struct amdgpu_device*) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void kv_update_acp_boot_level(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 u8 acp_boot_level;

 if (!pi->caps_stable_p_state) {
  acp_boot_level = kv_get_acp_boot_level(adev);
  if (acp_boot_level != pi->acp_boot_level) {
   pi->acp_boot_level = acp_boot_level;
   amdgpu_kv_send_msg_to_smc_with_parameter(adev,
         PPSMC_MSG_ACPDPM_SetEnabledMask,
         (1 << pi->acp_boot_level));
  }
 }
}
