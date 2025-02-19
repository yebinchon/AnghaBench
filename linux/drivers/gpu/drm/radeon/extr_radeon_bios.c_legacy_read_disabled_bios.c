
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_device {int flags; TYPE_2__* ddev; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_ATI_RADEON_QY ;
 int RADEON_BUS_BIOS_DIS_ROM ;
 int RADEON_BUS_CNTL ;
 int RADEON_CRTC2_DISP_REQ_EN_B ;
 int RADEON_CRTC2_EN ;
 int RADEON_CRTC2_GEN_CNTL ;
 int RADEON_CRTC_CRT_ON ;
 int RADEON_CRTC_DISPLAY_DIS ;
 int RADEON_CRTC_DISP_REQ_EN_B ;
 int RADEON_CRTC_EN ;
 int RADEON_CRTC_EXT_CNTL ;
 int RADEON_CRTC_EXT_DISP_EN ;
 int RADEON_CRTC_GEN_CNTL ;
 int RADEON_CRTC_SYNC_TRISTAT ;
 int RADEON_FP2_GEN_CNTL ;
 int RADEON_FP2_ON ;
 int RADEON_IS_PCIE ;
 int RADEON_SCK_PRESCALE_MASK ;
 int RADEON_SCK_PRESCALE_SHIFT ;
 int RADEON_SEPROM_CNTL1 ;
 int RADEON_SINGLE_CRTC ;
 int RADEON_VIPH_CONTROL ;
 int RADEON_VIPH_EN ;
 int RREG32 (int ) ;
 int RV370_BUS_BIOS_DIS_ROM ;
 int RV370_BUS_CNTL ;
 int WREG32 (int ,int) ;
 int radeon_read_bios (struct radeon_device*) ;

__attribute__((used)) static bool legacy_read_disabled_bios(struct radeon_device *rdev)
{
 uint32_t seprom_cntl1;
 uint32_t viph_control;
 uint32_t bus_cntl;
 uint32_t crtc_gen_cntl;
 uint32_t crtc2_gen_cntl;
 uint32_t crtc_ext_cntl;
 uint32_t fp2_gen_cntl;
 bool r;

 seprom_cntl1 = RREG32(RADEON_SEPROM_CNTL1);
 viph_control = RREG32(RADEON_VIPH_CONTROL);
 if (rdev->flags & RADEON_IS_PCIE)
  bus_cntl = RREG32(RV370_BUS_CNTL);
 else
  bus_cntl = RREG32(RADEON_BUS_CNTL);
 crtc_gen_cntl = RREG32(RADEON_CRTC_GEN_CNTL);
 crtc2_gen_cntl = 0;
 crtc_ext_cntl = RREG32(RADEON_CRTC_EXT_CNTL);
 fp2_gen_cntl = 0;

 if (rdev->ddev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
  fp2_gen_cntl = RREG32(RADEON_FP2_GEN_CNTL);
 }

 if (!(rdev->flags & RADEON_SINGLE_CRTC)) {
  crtc2_gen_cntl = RREG32(RADEON_CRTC2_GEN_CNTL);
 }

 WREG32(RADEON_SEPROM_CNTL1,
        ((seprom_cntl1 & ~RADEON_SCK_PRESCALE_MASK) |
  (0xc << RADEON_SCK_PRESCALE_SHIFT)));


 WREG32(RADEON_VIPH_CONTROL, (viph_control & ~RADEON_VIPH_EN));


 if (rdev->flags & RADEON_IS_PCIE)
  WREG32(RV370_BUS_CNTL, (bus_cntl & ~RV370_BUS_BIOS_DIS_ROM));
 else
  WREG32(RADEON_BUS_CNTL, (bus_cntl & ~RADEON_BUS_BIOS_DIS_ROM));


 WREG32(RADEON_CRTC_GEN_CNTL,
        ((crtc_gen_cntl & ~RADEON_CRTC_EN) |
  (RADEON_CRTC_DISP_REQ_EN_B |
   RADEON_CRTC_EXT_DISP_EN)));
 if (!(rdev->flags & RADEON_SINGLE_CRTC)) {
  WREG32(RADEON_CRTC2_GEN_CNTL,
         ((crtc2_gen_cntl & ~RADEON_CRTC2_EN) |
   RADEON_CRTC2_DISP_REQ_EN_B));
 }

 WREG32(RADEON_CRTC_EXT_CNTL,
        ((crtc_ext_cntl & ~RADEON_CRTC_CRT_ON) |
  (RADEON_CRTC_SYNC_TRISTAT |
   RADEON_CRTC_DISPLAY_DIS)));

 if (rdev->ddev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
  WREG32(RADEON_FP2_GEN_CNTL, (fp2_gen_cntl & ~RADEON_FP2_ON));
 }

 r = radeon_read_bios(rdev);


 WREG32(RADEON_SEPROM_CNTL1, seprom_cntl1);
 WREG32(RADEON_VIPH_CONTROL, viph_control);
 if (rdev->flags & RADEON_IS_PCIE)
  WREG32(RV370_BUS_CNTL, bus_cntl);
 else
  WREG32(RADEON_BUS_CNTL, bus_cntl);
 WREG32(RADEON_CRTC_GEN_CNTL, crtc_gen_cntl);
 if (!(rdev->flags & RADEON_SINGLE_CRTC)) {
  WREG32(RADEON_CRTC2_GEN_CNTL, crtc2_gen_cntl);
 }
 WREG32(RADEON_CRTC_EXT_CNTL, crtc_ext_cntl);
 if (rdev->ddev->pdev->device == PCI_DEVICE_ID_ATI_RADEON_QY) {
  WREG32(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);
 }
 return r;
}
