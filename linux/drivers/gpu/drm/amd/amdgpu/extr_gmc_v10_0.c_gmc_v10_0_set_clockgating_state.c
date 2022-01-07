
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int athub_v2_0_set_clockgating (struct amdgpu_device*,int) ;
 int mmhub_v2_0_set_clockgating (struct amdgpu_device*,int) ;

__attribute__((used)) static int gmc_v10_0_set_clockgating_state(void *handle,
        enum amd_clockgating_state state)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = mmhub_v2_0_set_clockgating(adev, state);
 if (r)
  return r;

 return athub_v2_0_set_clockgating(adev, state);
}
