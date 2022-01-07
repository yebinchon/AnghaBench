
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_3__ pm; TYPE_2__ powerplay; int smu; } ;
struct TYPE_4__ {scalar_t__ set_powergating_by_smu; } ;


 int AMD_IP_BLOCK_TYPE_VCE ;
 int DRM_ERROR (char*,char*,int) ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_dpm_set_power_gate (int *,int ,int) ;

void amdgpu_dpm_enable_vce(struct amdgpu_device *adev, bool enable)
{
 int ret = 0;
 if (is_support_sw_smu(adev)) {
     ret = smu_dpm_set_power_gate(&adev->smu, AMD_IP_BLOCK_TYPE_VCE, enable);
     if (ret)
  DRM_ERROR("[SW SMU]: dpm enable vce failed, state = %s, ret = %d. \n",
     enable ? "true" : "false", ret);
 } else if (adev->powerplay.pp_funcs->set_powergating_by_smu) {

  mutex_lock(&adev->pm.mutex);
  amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_VCE, !enable);
  mutex_unlock(&adev->pm.mutex);
 }
}
