
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;
 int vce_v4_0_start (struct amdgpu_device*) ;
 int vce_v4_0_stop (struct amdgpu_device*) ;

__attribute__((used)) static int vce_v4_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{







 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (state == AMD_PG_STATE_GATE)
  return vce_v4_0_stop(adev);
 else
  return vce_v4_0_start(adev);
}
