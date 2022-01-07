
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int real_vram_size; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gmc; } ;







 int D1VGA_CONTROL ;
 int D1VGA_MODE_ENABLE ;
 int DCE ;
 int HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION ;
 int PRI_VIEWPORT_HEIGHT ;
 int PRI_VIEWPORT_WIDTH ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SCL0_VIEWPORT_SIZE ;
 int VIEWPORT_HEIGHT ;
 int VIEWPORT_WIDTH ;
 scalar_t__ gmc_v9_0_keep_stolen_memory (struct amdgpu_device*) ;
 int mmD1VGA_CONTROL ;
 int mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION ;
 int mmSCL0_VIEWPORT_SIZE ;

__attribute__((used)) static unsigned gmc_v9_0_get_vbios_fb_size(struct amdgpu_device *adev)
{
 u32 d1vga_control;
 unsigned size;





 if (gmc_v9_0_keep_stolen_memory(adev))
  return 9 * 1024 * 1024;

 d1vga_control = RREG32_SOC15(DCE, 0, mmD1VGA_CONTROL);
 if (REG_GET_FIELD(d1vga_control, D1VGA_CONTROL, D1VGA_MODE_ENABLE)) {
  size = 9 * 1024 * 1024;
 } else {
  u32 viewport;

  switch (adev->asic_type) {
  case 132:
  case 131:
   viewport = RREG32_SOC15(DCE, 0, mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION);
   size = (REG_GET_FIELD(viewport,
           HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, PRI_VIEWPORT_HEIGHT) *
    REG_GET_FIELD(viewport,
           HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, PRI_VIEWPORT_WIDTH) *
    4);
   break;
  case 130:
  case 129:
  case 128:
  default:
   viewport = RREG32_SOC15(DCE, 0, mmSCL0_VIEWPORT_SIZE);
   size = (REG_GET_FIELD(viewport, SCL0_VIEWPORT_SIZE, VIEWPORT_HEIGHT) *
    REG_GET_FIELD(viewport, SCL0_VIEWPORT_SIZE, VIEWPORT_WIDTH) *
    4);
   break;
  }
 }

 if ((adev->gmc.real_vram_size - size) < (8 * 1024 * 1024))
  return 0;

 return size;
}
