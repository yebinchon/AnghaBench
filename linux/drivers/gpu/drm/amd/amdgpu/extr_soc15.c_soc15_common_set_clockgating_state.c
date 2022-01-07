
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_device {int asic_type; TYPE_2__* nbio_funcs; TYPE_1__* df_funcs; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;
struct TYPE_4__ {int (* update_medium_grain_light_sleep ) (struct amdgpu_device*,int) ;int (* update_medium_grain_clock_gating ) (struct amdgpu_device*,int) ;} ;
struct TYPE_3__ {int (* update_medium_grain_clock_gating ) (struct amdgpu_device*,int) ;} ;


 int AMD_CG_STATE_GATE ;






 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int soc15_update_drm_clock_gating (struct amdgpu_device*,int) ;
 int soc15_update_drm_light_sleep (struct amdgpu_device*,int) ;
 int soc15_update_hdp_light_sleep (struct amdgpu_device*,int) ;
 int soc15_update_rom_medium_grain_clock_gating (struct amdgpu_device*,int) ;
 int stub1 (struct amdgpu_device*,int) ;
 int stub2 (struct amdgpu_device*,int) ;
 int stub3 (struct amdgpu_device*,int) ;
 int stub4 (struct amdgpu_device*,int) ;
 int stub5 (struct amdgpu_device*,int) ;

__attribute__((used)) static int soc15_common_set_clockgating_state(void *handle,
         enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  return 0;

 switch (adev->asic_type) {
 case 130:
 case 129:
 case 128:
  adev->nbio_funcs->update_medium_grain_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  adev->nbio_funcs->update_medium_grain_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_hdp_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_drm_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_drm_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_rom_medium_grain_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  adev->df_funcs->update_medium_grain_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  break;
 case 132:
 case 131:
  adev->nbio_funcs->update_medium_grain_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  adev->nbio_funcs->update_medium_grain_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_hdp_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_drm_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_drm_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  soc15_update_rom_medium_grain_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  break;
 case 133:
  soc15_update_hdp_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  break;
 default:
  break;
 }
 return 0;
}
