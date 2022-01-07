
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_device {int asic_type; TYPE_1__* nbio_funcs; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;
struct TYPE_2__ {int (* update_medium_grain_light_sleep ) (struct amdgpu_device*,int) ;int (* update_medium_grain_clock_gating ) (struct amdgpu_device*,int) ;} ;


 int AMD_CG_STATE_GATE ;



 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int nv_update_hdp_clock_gating (struct amdgpu_device*,int) ;
 int nv_update_hdp_mem_power_gating (struct amdgpu_device*,int) ;
 int stub1 (struct amdgpu_device*,int) ;
 int stub2 (struct amdgpu_device*,int) ;

__attribute__((used)) static int nv_common_set_clockgating_state(void *handle,
        enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  return 0;

 switch (adev->asic_type) {
 case 130:
 case 128:
 case 129:
  adev->nbio_funcs->update_medium_grain_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  adev->nbio_funcs->update_medium_grain_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  nv_update_hdp_mem_power_gating(adev,
       state == AMD_CG_STATE_GATE ? 1 : 0);
  nv_update_hdp_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  break;
 default:
  break;
 }
 return 0;
}
