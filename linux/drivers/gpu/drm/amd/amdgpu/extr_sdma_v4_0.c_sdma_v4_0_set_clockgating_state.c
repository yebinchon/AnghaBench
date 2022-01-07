
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;






 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int sdma_v4_0_update_medium_grain_clock_gating (struct amdgpu_device*,int) ;
 int sdma_v4_0_update_medium_grain_light_sleep (struct amdgpu_device*,int) ;

__attribute__((used)) static int sdma_v4_0_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  return 0;

 switch (adev->asic_type) {
 case 130:
 case 129:
 case 128:
 case 132:
 case 133:
 case 131:
  sdma_v4_0_update_medium_grain_clock_gating(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  sdma_v4_0_update_medium_grain_light_sleep(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
  break;
 default:
  break;
 }
 return 0;
}
