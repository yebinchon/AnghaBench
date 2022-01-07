
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;

 int sdma_v4_1_update_power_gating (struct amdgpu_device*,int) ;

__attribute__((used)) static int sdma_v4_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 switch (adev->asic_type) {
 case 128:
  sdma_v4_1_update_power_gating(adev,
    state == AMD_PG_STATE_GATE ? 1 : 0);
  break;
 default:
  break;
 }

 return 0;
}
