
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gfx_v6_0_cp_compute_resume (struct amdgpu_device*) ;
 int gfx_v6_0_cp_gfx_resume (struct amdgpu_device*) ;
 int gfx_v6_0_cp_load_microcode (struct amdgpu_device*) ;
 int gfx_v6_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v6_0_cp_resume(struct amdgpu_device *adev)
{
 int r;

 gfx_v6_0_enable_gui_idle_interrupt(adev, 0);

 r = gfx_v6_0_cp_load_microcode(adev);
 if (r)
  return r;

 r = gfx_v6_0_cp_gfx_resume(adev);
 if (r)
  return r;
 r = gfx_v6_0_cp_compute_resume(adev);
 if (r)
  return r;

 gfx_v6_0_enable_gui_idle_interrupt(adev, 1);

 return 0;
}
