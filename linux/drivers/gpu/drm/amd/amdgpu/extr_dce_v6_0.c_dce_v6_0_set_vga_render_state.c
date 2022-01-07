
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int VGA_VSTATUS_CNTL ;
 int WREG32 (int ,int) ;
 int mmVGA_RENDER_CONTROL ;

__attribute__((used)) static void dce_v6_0_set_vga_render_state(struct amdgpu_device *adev,
       bool render)
{
 if (!render)
  WREG32(mmVGA_RENDER_CONTROL,
   RREG32(mmVGA_RENDER_CONTROL) & VGA_VSTATUS_CNTL);

}
