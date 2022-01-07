
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 int vce_v2_0_enable_mgcg (struct amdgpu_device*,int,int) ;

__attribute__((used)) static int vce_v2_0_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 bool gate = 0;
 bool sw_cg = 0;

 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (state == AMD_CG_STATE_GATE) {
  gate = 1;
  sw_cg = 1;
 }

 vce_v2_0_enable_mgcg(adev, gate, sw_cg);

 return 0;
}
