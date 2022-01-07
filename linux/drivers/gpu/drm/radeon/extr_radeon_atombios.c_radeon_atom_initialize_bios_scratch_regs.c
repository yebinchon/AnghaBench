
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {scalar_t__ family; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int ATOM_S2_DEVICE_DPMS_STATE ;
 int ATOM_S2_VRI_BRIGHT_ENABLE ;
 int ATOM_S6_ACC_BLOCK_DISPLAY_SWITCH ;
 scalar_t__ CHIP_R600 ;
 int R600_BIOS_2_SCRATCH ;
 int R600_BIOS_6_SCRATCH ;
 int RADEON_BIOS_2_SCRATCH ;
 int RADEON_BIOS_6_SCRATCH ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;

void radeon_atom_initialize_bios_scratch_regs(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 uint32_t bios_2_scratch, bios_6_scratch;

 if (rdev->family >= CHIP_R600) {
  bios_2_scratch = RREG32(R600_BIOS_2_SCRATCH);
  bios_6_scratch = RREG32(R600_BIOS_6_SCRATCH);
 } else {
  bios_2_scratch = RREG32(RADEON_BIOS_2_SCRATCH);
  bios_6_scratch = RREG32(RADEON_BIOS_6_SCRATCH);
 }


 bios_2_scratch &= ~ATOM_S2_VRI_BRIGHT_ENABLE;


 bios_6_scratch |= ATOM_S6_ACC_BLOCK_DISPLAY_SWITCH;


 if (ASIC_IS_DCE4(rdev))
  bios_2_scratch &= ~ATOM_S2_DEVICE_DPMS_STATE;

 if (rdev->family >= CHIP_R600) {
  WREG32(R600_BIOS_2_SCRATCH, bios_2_scratch);
  WREG32(R600_BIOS_6_SCRATCH, bios_6_scratch);
 } else {
  WREG32(RADEON_BIOS_2_SCRATCH, bios_2_scratch);
  WREG32(RADEON_BIOS_6_SCRATCH, bios_6_scratch);
 }

}
