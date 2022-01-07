
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int real_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int D1VGA_CONTROL ;
 int D1VGA_MODE_ENABLE ;
 int DCE ;
 int DRM_ERROR (char*) ;
 int HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION ;
 int HUBPREQ0_DCSURF_SURFACE_PITCH ;
 int PITCH ;
 int PRI_VIEWPORT_HEIGHT ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmD1VGA_CONTROL ;
 int mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION ;
 int mmHUBPREQ0_DCSURF_SURFACE_PITCH ;

__attribute__((used)) static unsigned gmc_v10_0_get_vbios_fb_size(struct amdgpu_device *adev)
{
 u32 d1vga_control = RREG32_SOC15(DCE, 0, mmD1VGA_CONTROL);
 unsigned size;

 if (REG_GET_FIELD(d1vga_control, D1VGA_CONTROL, D1VGA_MODE_ENABLE)) {
  size = 9 * 1024 * 1024;
 } else {
  u32 viewport;
  u32 pitch;

  viewport = RREG32_SOC15(DCE, 0, mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION);
  pitch = RREG32_SOC15(DCE, 0, mmHUBPREQ0_DCSURF_SURFACE_PITCH);
  size = (REG_GET_FIELD(viewport,
     HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, PRI_VIEWPORT_HEIGHT) *
    REG_GET_FIELD(pitch, HUBPREQ0_DCSURF_SURFACE_PITCH, PITCH) *
    4);
 }

 if ((adev->gmc.real_vram_size - size) < (8 * 1024 * 1024)) {
  DRM_ERROR("Warning: pre-OS buffer uses most of vram, 				be aware of gart table overwrite\n");

  return 0;
 }

 return size;
}
