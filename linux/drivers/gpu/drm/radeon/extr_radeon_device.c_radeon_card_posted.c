
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {scalar_t__ family; int num_crtc; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ subsystem_vendor; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_NODCE (struct radeon_device*) ;
 int AVIVO_CRTC_EN ;
 scalar_t__ AVIVO_D1CRTC_CONTROL ;
 scalar_t__ AVIVO_D2CRTC_CONTROL ;
 scalar_t__ CHIP_BONAIRE ;
 scalar_t__ CHIP_R600 ;
 int EFI_BOOT ;
 scalar_t__ EVERGREEN_CRTC0_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC1_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC2_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC3_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC4_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC5_REGISTER_OFFSET ;
 scalar_t__ EVERGREEN_CRTC_CONTROL ;
 int EVERGREEN_CRTC_MASTER_EN ;
 scalar_t__ PCI_VENDOR_ID_APPLE ;
 scalar_t__ R600_CONFIG_MEMSIZE ;
 scalar_t__ RADEON_CONFIG_MEMSIZE ;
 scalar_t__ RADEON_CRTC2_GEN_CNTL ;
 int RADEON_CRTC_EN ;
 scalar_t__ RADEON_CRTC_GEN_CNTL ;
 int RREG32 (scalar_t__) ;
 scalar_t__ efi_enabled (int ) ;
 scalar_t__ radeon_device_is_virtual () ;

bool radeon_card_posted(struct radeon_device *rdev)
{
 uint32_t reg;


 if (rdev->family >= CHIP_BONAIRE &&
     radeon_device_is_virtual())
  return 0;


 if (efi_enabled(EFI_BOOT) &&
     (rdev->pdev->subsystem_vendor == PCI_VENDOR_ID_APPLE) &&
     (rdev->family < CHIP_R600))
  return 0;

 if (ASIC_IS_NODCE(rdev))
  goto check_memsize;


 if (ASIC_IS_DCE4(rdev)) {
  reg = RREG32(EVERGREEN_CRTC_CONTROL + EVERGREEN_CRTC0_REGISTER_OFFSET) |
   RREG32(EVERGREEN_CRTC_CONTROL + EVERGREEN_CRTC1_REGISTER_OFFSET);
   if (rdev->num_crtc >= 4) {
    reg |= RREG32(EVERGREEN_CRTC_CONTROL + EVERGREEN_CRTC2_REGISTER_OFFSET) |
     RREG32(EVERGREEN_CRTC_CONTROL + EVERGREEN_CRTC3_REGISTER_OFFSET);
   }
   if (rdev->num_crtc >= 6) {
    reg |= RREG32(EVERGREEN_CRTC_CONTROL + EVERGREEN_CRTC4_REGISTER_OFFSET) |
     RREG32(EVERGREEN_CRTC_CONTROL + EVERGREEN_CRTC5_REGISTER_OFFSET);
   }
  if (reg & EVERGREEN_CRTC_MASTER_EN)
   return 1;
 } else if (ASIC_IS_AVIVO(rdev)) {
  reg = RREG32(AVIVO_D1CRTC_CONTROL) |
        RREG32(AVIVO_D2CRTC_CONTROL);
  if (reg & AVIVO_CRTC_EN) {
   return 1;
  }
 } else {
  reg = RREG32(RADEON_CRTC_GEN_CNTL) |
        RREG32(RADEON_CRTC2_GEN_CNTL);
  if (reg & RADEON_CRTC_EN) {
   return 1;
  }
 }

check_memsize:

 if (rdev->family >= CHIP_R600)
  reg = RREG32(R600_CONFIG_MEMSIZE);
 else
  reg = RREG32(RADEON_CONFIG_MEMSIZE);

 if (reg)
  return 1;

 return 0;

}
