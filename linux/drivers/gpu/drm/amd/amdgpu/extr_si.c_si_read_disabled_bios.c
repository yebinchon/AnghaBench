
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int AVIVO_D1VGA_CONTROL ;
 int AVIVO_D2VGA_CONTROL ;
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ;
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ;
 int C_000300_VGA_VSTATUS_CNTL ;
 int R600_BIOS_ROM_DIS ;
 int R600_BUS_CNTL ;
 int R600_ROM_CNTL ;
 int R600_SCK_OVERWRITE ;
 int RREG32 (int ) ;
 int VGA_RENDER_CONTROL ;
 int WREG32 (int ,int) ;
 int amdgpu_read_bios (struct amdgpu_device*) ;

__attribute__((used)) static bool si_read_disabled_bios(struct amdgpu_device *adev)
{
 u32 bus_cntl;
 u32 d1vga_control = 0;
 u32 d2vga_control = 0;
 u32 vga_render_control = 0;
 u32 rom_cntl;
 bool r;

 bus_cntl = RREG32(R600_BUS_CNTL);
 if (adev->mode_info.num_crtc) {
  d1vga_control = RREG32(AVIVO_D1VGA_CONTROL);
  d2vga_control = RREG32(AVIVO_D2VGA_CONTROL);
  vga_render_control = RREG32(VGA_RENDER_CONTROL);
 }
 rom_cntl = RREG32(R600_ROM_CNTL);


 WREG32(R600_BUS_CNTL, (bus_cntl & ~R600_BIOS_ROM_DIS));
 if (adev->mode_info.num_crtc) {

  WREG32(AVIVO_D1VGA_CONTROL,
         (d1vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
       AVIVO_DVGA_CONTROL_TIMING_SELECT)));
  WREG32(AVIVO_D2VGA_CONTROL,
         (d2vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
       AVIVO_DVGA_CONTROL_TIMING_SELECT)));
  WREG32(VGA_RENDER_CONTROL,
         (vga_render_control & C_000300_VGA_VSTATUS_CNTL));
 }
 WREG32(R600_ROM_CNTL, rom_cntl | R600_SCK_OVERWRITE);

 r = amdgpu_read_bios(adev);


 WREG32(R600_BUS_CNTL, bus_cntl);
 if (adev->mode_info.num_crtc) {
  WREG32(AVIVO_D1VGA_CONTROL, d1vga_control);
  WREG32(AVIVO_D2VGA_CONTROL, d2vga_control);
  WREG32(VGA_RENDER_CONTROL, vga_render_control);
 }
 WREG32(R600_ROM_CNTL, rom_cntl);
 return r;
}
