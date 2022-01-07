
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 int navi10_ih_update_clockgating_state (struct amdgpu_device*,int) ;

__attribute__((used)) static int navi10_ih_set_clockgating_state(void *handle,
        enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 navi10_ih_update_clockgating_state(adev,
    state == AMD_CG_STATE_GATE ? 1 : 0);
 return 0;
}
