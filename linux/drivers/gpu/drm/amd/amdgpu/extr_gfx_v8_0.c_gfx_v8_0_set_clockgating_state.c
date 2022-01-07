
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfx_v8_0_polaris_update_gfx_clock_gating (struct amdgpu_device*,int) ;
 int gfx_v8_0_tonga_update_gfx_clock_gating (struct amdgpu_device*,int) ;
 int gfx_v8_0_update_gfx_clock_gating (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v8_0_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (amdgpu_sriov_vf(adev))
  return 0;

 switch (adev->asic_type) {
 case 134:
 case 135:
 case 130:
  gfx_v8_0_update_gfx_clock_gating(adev,
       state == AMD_CG_STATE_GATE);
  break;
 case 129:
  gfx_v8_0_tonga_update_gfx_clock_gating(adev, state);
  break;
 case 133:
 case 132:
 case 131:
 case 128:
  gfx_v8_0_polaris_update_gfx_clock_gating(adev, state);
  break;
 default:
  break;
 }
 return 0;
}
