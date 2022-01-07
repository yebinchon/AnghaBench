
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;
 int uvd_v5_0_start (struct amdgpu_device*) ;
 int uvd_v5_0_stop (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v5_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{







 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int ret = 0;

 if (state == AMD_PG_STATE_GATE) {
  uvd_v5_0_stop(adev);
 } else {
  ret = uvd_v5_0_start(adev);
  if (ret)
   goto out;
 }

out:
 return ret;
}
