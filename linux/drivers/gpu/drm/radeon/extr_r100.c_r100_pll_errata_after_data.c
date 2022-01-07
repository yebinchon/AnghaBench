
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int pll_errata; } ;


 int CHIP_ERRATA_PLL_DELAY ;
 int CHIP_ERRATA_R300_CG ;
 int RADEON_CLOCK_CNTL_DATA ;
 int RADEON_CLOCK_CNTL_INDEX ;
 int RADEON_PLL_WR_EN ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void r100_pll_errata_after_data(struct radeon_device *rdev)
{



 if (rdev->pll_errata & CHIP_ERRATA_PLL_DELAY) {
  mdelay(5);
 }






 if (rdev->pll_errata & CHIP_ERRATA_R300_CG) {
  uint32_t save, tmp;

  save = RREG32(RADEON_CLOCK_CNTL_INDEX);
  tmp = save & ~(0x3f | RADEON_PLL_WR_EN);
  WREG32(RADEON_CLOCK_CNTL_INDEX, tmp);
  tmp = RREG32(RADEON_CLOCK_CNTL_DATA);
  WREG32(RADEON_CLOCK_CNTL_INDEX, save);
 }
}
