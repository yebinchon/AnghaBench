
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int PPSMC_MSG_DPM_ForceState ;
 int SMU7_MAX_LEVELS_GRAPHICS ;
 int amdgpu_kv_dpm_get_enable_mask (struct amdgpu_device*,int*) ;
 int amdgpu_kv_send_msg_to_smc_with_parameter (struct amdgpu_device*,int ,int) ;
 int kv_set_enabled_level (struct amdgpu_device*,int) ;

__attribute__((used)) static int kv_force_dpm_lowest(struct amdgpu_device *adev)
{
 int ret;
 u32 enable_mask, i;

 ret = amdgpu_kv_dpm_get_enable_mask(adev, &enable_mask);
 if (ret)
  return ret;

 for (i = 0; i < SMU7_MAX_LEVELS_GRAPHICS; i++) {
  if (enable_mask & (1 << i))
   break;
 }

 if (adev->asic_type == CHIP_KABINI || adev->asic_type == CHIP_MULLINS)
  return amdgpu_kv_send_msg_to_smc_with_parameter(adev, PPSMC_MSG_DPM_ForceState, i);
 else
  return kv_set_enabled_level(adev, i);
}
