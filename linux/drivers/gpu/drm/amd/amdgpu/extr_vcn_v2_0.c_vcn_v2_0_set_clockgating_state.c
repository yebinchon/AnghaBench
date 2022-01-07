
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 int EBUSY ;
 int vcn_v2_0_disable_clock_gating (struct amdgpu_device*) ;
 int vcn_v2_0_enable_clock_gating (struct amdgpu_device*) ;
 scalar_t__ vcn_v2_0_is_idle (void*) ;

__attribute__((used)) static int vcn_v2_0_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 bool enable = (state == AMD_CG_STATE_GATE) ? 1 : 0;

 if (enable) {

  if (vcn_v2_0_is_idle(handle))
   return -EBUSY;
  vcn_v2_0_enable_clock_gating(adev);
 } else {

  vcn_v2_0_disable_clock_gating(adev);
 }
 return 0;
}
