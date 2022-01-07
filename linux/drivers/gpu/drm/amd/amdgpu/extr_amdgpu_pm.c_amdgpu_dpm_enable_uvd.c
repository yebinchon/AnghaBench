
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pp_hwmgr {TYPE_5__* hwmgr_func; } ;
struct TYPE_9__ {struct pp_hwmgr* pp_handle; TYPE_1__* pp_funcs; } ;
struct TYPE_8__ {scalar_t__ decode_image_width; } ;
struct TYPE_7__ {int mutex; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_4__ powerplay; TYPE_3__ uvd; TYPE_2__ pm; int smu; } ;
struct TYPE_10__ {int (* update_nbdpm_pstate ) (struct pp_hwmgr*,int,int) ;} ;
struct TYPE_6__ {scalar_t__ set_powergating_by_smu; } ;


 int AMD_IP_BLOCK_TYPE_UVD ;
 scalar_t__ CHIP_STONEY ;
 int DRM_ERROR (char*,char*,int) ;
 scalar_t__ WIDTH_4K ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_dpm_set_power_gate (int *,int ,int) ;
 int stub1 (struct pp_hwmgr*,int,int) ;

void amdgpu_dpm_enable_uvd(struct amdgpu_device *adev, bool enable)
{
 int ret = 0;
 if (is_support_sw_smu(adev)) {
     ret = smu_dpm_set_power_gate(&adev->smu, AMD_IP_BLOCK_TYPE_UVD, enable);
     if (ret)
  DRM_ERROR("[SW SMU]: dpm enable uvd failed, state = %s, ret = %d. \n",
     enable ? "true" : "false", ret);
 } else if (adev->powerplay.pp_funcs->set_powergating_by_smu) {

  mutex_lock(&adev->pm.mutex);
  amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_UVD, !enable);
  mutex_unlock(&adev->pm.mutex);
 }

 if (adev->asic_type == CHIP_STONEY &&
  adev->uvd.decode_image_width >= WIDTH_4K) {
  struct pp_hwmgr *hwmgr = adev->powerplay.pp_handle;

  if (hwmgr && hwmgr->hwmgr_func &&
      hwmgr->hwmgr_func->update_nbdpm_pstate)
   hwmgr->hwmgr_func->update_nbdpm_pstate(hwmgr,
              !enable,
              1);
 }
}
