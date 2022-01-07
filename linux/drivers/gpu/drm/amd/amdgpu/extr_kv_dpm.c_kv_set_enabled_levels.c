
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kv_power_info {int lowest_valid; int highest_valid; } ;
struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_SCLKDPM_SetEnabledMask ;
 int amdgpu_kv_send_msg_to_smc_with_parameter (struct amdgpu_device*,int ,int) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static int kv_set_enabled_levels(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 u32 i, new_mask = 0;

 for (i = pi->lowest_valid; i <= pi->highest_valid; i++)
  new_mask |= (1 << i);

 return amdgpu_kv_send_msg_to_smc_with_parameter(adev,
       PPSMC_MSG_SCLKDPM_SetEnabledMask,
       new_mask);
}
