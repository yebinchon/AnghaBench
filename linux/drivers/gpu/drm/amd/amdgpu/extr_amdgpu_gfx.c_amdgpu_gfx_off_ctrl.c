
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ gfx_off_req_count; int gfx_off_state; int gfx_off_mutex; int gfx_off_delay_work; } ;
struct TYPE_7__ {TYPE_2__* pp_funcs; } ;
struct TYPE_5__ {int pp_feature; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_3__ powerplay; TYPE_1__ pm; } ;
struct TYPE_6__ {int set_powergating_by_smu; } ;


 int AMD_IP_BLOCK_TYPE_GFX ;
 int GFX_OFF_DELAY_ENABLE ;
 int PP_GFXOFF_MASK ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;
 int is_support_sw_smu (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;

void amdgpu_gfx_off_ctrl(struct amdgpu_device *adev, bool enable)
{
 if (!(adev->pm.pp_feature & PP_GFXOFF_MASK))
  return;

 if (!is_support_sw_smu(adev) &&
     (!adev->powerplay.pp_funcs ||
      !adev->powerplay.pp_funcs->set_powergating_by_smu))
  return;


 mutex_lock(&adev->gfx.gfx_off_mutex);

 if (!enable)
  adev->gfx.gfx_off_req_count++;
 else if (adev->gfx.gfx_off_req_count > 0)
  adev->gfx.gfx_off_req_count--;

 if (enable && !adev->gfx.gfx_off_state && !adev->gfx.gfx_off_req_count) {
  schedule_delayed_work(&adev->gfx.gfx_off_delay_work, GFX_OFF_DELAY_ENABLE);
 } else if (!enable && adev->gfx.gfx_off_state) {
  if (!amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_GFX, 0))
   adev->gfx.gfx_off_state = 0;
 }

 mutex_unlock(&adev->gfx.gfx_off_mutex);
}
