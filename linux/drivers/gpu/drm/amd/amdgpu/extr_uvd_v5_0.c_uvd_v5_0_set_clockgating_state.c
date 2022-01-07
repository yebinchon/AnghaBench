
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 int EBUSY ;
 int uvd_v5_0_enable_clock_gating (struct amdgpu_device*,int) ;
 int uvd_v5_0_set_sw_clock_gating (struct amdgpu_device*) ;
 scalar_t__ uvd_v5_0_wait_for_idle (void*) ;

__attribute__((used)) static int uvd_v5_0_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 bool enable = (state == AMD_CG_STATE_GATE) ? 1 : 0;

 if (enable) {

  if (uvd_v5_0_wait_for_idle(handle))
   return -EBUSY;
  uvd_v5_0_enable_clock_gating(adev, 1);



 } else {
  uvd_v5_0_enable_clock_gating(adev, 0);
 }

 uvd_v5_0_set_sw_clock_gating(adev);
 return 0;
}
