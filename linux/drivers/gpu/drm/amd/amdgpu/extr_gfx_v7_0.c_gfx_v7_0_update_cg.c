
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int gfx_v7_0_enable_cgcg (struct amdgpu_device*,int) ;
 int gfx_v7_0_enable_gui_idle_interrupt (struct amdgpu_device*,int) ;
 int gfx_v7_0_enable_mgcg (struct amdgpu_device*,int) ;

__attribute__((used)) static void gfx_v7_0_update_cg(struct amdgpu_device *adev,
          bool enable)
{
 gfx_v7_0_enable_gui_idle_interrupt(adev, 0);

 if (enable) {
  gfx_v7_0_enable_mgcg(adev, 1);
  gfx_v7_0_enable_cgcg(adev, 1);
 } else {
  gfx_v7_0_enable_cgcg(adev, 0);
  gfx_v7_0_enable_mgcg(adev, 0);
 }
 gfx_v7_0_enable_gui_idle_interrupt(adev, 1);
}
