
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (int ) ;
 int VGA_HDP_CONTROL ;
 int VGA_MEMORY_DISABLE ;
 int VGA_RENDER_CONTROL ;
 int VGA_VSTATUS_CNTL ;
 int WREG32 (int ,int ) ;
 int mmVGA_HDP_CONTROL ;
 int mmVGA_RENDER_CONTROL ;

__attribute__((used)) static void dce_v11_0_set_vga_render_state(struct amdgpu_device *adev,
        bool render)
{
 u32 tmp;


 tmp = RREG32(mmVGA_HDP_CONTROL);
 if (render)
  tmp = REG_SET_FIELD(tmp, VGA_HDP_CONTROL, VGA_MEMORY_DISABLE, 0);
 else
  tmp = REG_SET_FIELD(tmp, VGA_HDP_CONTROL, VGA_MEMORY_DISABLE, 1);
 WREG32(mmVGA_HDP_CONTROL, tmp);


 tmp = RREG32(mmVGA_RENDER_CONTROL);
 if (render)
  tmp = REG_SET_FIELD(tmp, VGA_RENDER_CONTROL, VGA_VSTATUS_CNTL, 1);
 else
  tmp = REG_SET_FIELD(tmp, VGA_RENDER_CONTROL, VGA_VSTATUS_CNTL, 0);
 WREG32(mmVGA_RENDER_CONTROL, tmp);
}
