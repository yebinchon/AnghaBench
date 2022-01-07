
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;


 int BUS_CNTL__BIOS_ROM_DIS_MASK ;
 int D1VGA_CONTROL__D1VGA_MODE_ENABLE_MASK ;
 int D1VGA_CONTROL__D1VGA_TIMING_SELECT_MASK ;
 int D2VGA_CONTROL__D2VGA_MODE_ENABLE_MASK ;
 int D2VGA_CONTROL__D2VGA_TIMING_SELECT_MASK ;
 int ROM_CNTL__SCK_OVERWRITE_MASK ;
 int RREG32 (int ) ;
 int RREG32_SMC (int ) ;
 int VGA_RENDER_CONTROL__VGA_VSTATUS_CNTL_MASK ;
 int WREG32 (int ,int) ;
 int WREG32_SMC (int ,int) ;
 int amdgpu_read_bios (struct amdgpu_device*) ;
 int ixROM_CNTL ;
 int mmBUS_CNTL ;
 int mmD1VGA_CONTROL ;
 int mmD2VGA_CONTROL ;
 int mmVGA_RENDER_CONTROL ;

__attribute__((used)) static bool vi_read_disabled_bios(struct amdgpu_device *adev)
{
 u32 bus_cntl;
 u32 d1vga_control = 0;
 u32 d2vga_control = 0;
 u32 vga_render_control = 0;
 u32 rom_cntl;
 bool r;

 bus_cntl = RREG32(mmBUS_CNTL);
 if (adev->mode_info.num_crtc) {
  d1vga_control = RREG32(mmD1VGA_CONTROL);
  d2vga_control = RREG32(mmD2VGA_CONTROL);
  vga_render_control = RREG32(mmVGA_RENDER_CONTROL);
 }
 rom_cntl = RREG32_SMC(ixROM_CNTL);


 WREG32(mmBUS_CNTL, (bus_cntl & ~BUS_CNTL__BIOS_ROM_DIS_MASK));
 if (adev->mode_info.num_crtc) {

  WREG32(mmD1VGA_CONTROL,
         (d1vga_control & ~(D1VGA_CONTROL__D1VGA_MODE_ENABLE_MASK |
       D1VGA_CONTROL__D1VGA_TIMING_SELECT_MASK)));
  WREG32(mmD2VGA_CONTROL,
         (d2vga_control & ~(D2VGA_CONTROL__D2VGA_MODE_ENABLE_MASK |
       D2VGA_CONTROL__D2VGA_TIMING_SELECT_MASK)));
  WREG32(mmVGA_RENDER_CONTROL,
         (vga_render_control & ~VGA_RENDER_CONTROL__VGA_VSTATUS_CNTL_MASK));
 }
 WREG32_SMC(ixROM_CNTL, rom_cntl | ROM_CNTL__SCK_OVERWRITE_MASK);

 r = amdgpu_read_bios(adev);


 WREG32(mmBUS_CNTL, bus_cntl);
 if (adev->mode_info.num_crtc) {
  WREG32(mmD1VGA_CONTROL, d1vga_control);
  WREG32(mmD2VGA_CONTROL, d2vga_control);
  WREG32(mmVGA_RENDER_CONTROL, vga_render_control);
 }
 WREG32_SMC(ixROM_CNTL, rom_cntl);
 return r;
}
