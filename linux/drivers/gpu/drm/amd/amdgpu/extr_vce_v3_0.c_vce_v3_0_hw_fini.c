
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int AMD_CG_STATE_GATE ;
 int vce_v3_0_set_clockgating_state (struct amdgpu_device*,int ) ;
 int vce_v3_0_stop (struct amdgpu_device*) ;
 int vce_v3_0_wait_for_idle (void*) ;

__attribute__((used)) static int vce_v3_0_hw_fini(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = vce_v3_0_wait_for_idle(handle);
 if (r)
  return r;

 vce_v3_0_stop(adev);
 return vce_v3_0_set_clockgating_state(adev, AMD_CG_STATE_GATE);
}
