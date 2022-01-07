
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 int AMD_CG_STATE_GATE ;
 int gfx_v6_0_enable_cgcg (struct amdgpu_device*,int) ;
 int gfx_v6_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int gfx_v6_0_enable_mgcg (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v6_0_set_clockgating_state(void *handle,
       enum amd_clockgating_state state)
{
 bool gate = 0;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (state == AMD_CG_STATE_GATE)
  gate = 1;

 gfx_v6_0_enable_gui_idle_interrupt(adev, 0);
 if (gate) {
  gfx_v6_0_enable_mgcg(adev, 1);
  gfx_v6_0_enable_cgcg(adev, 1);
 } else {
  gfx_v6_0_enable_cgcg(adev, 0);
  gfx_v6_0_enable_mgcg(adev, 0);
 }
 gfx_v6_0_enable_gui_idle_interrupt(adev, 1);

 return 0;
}
