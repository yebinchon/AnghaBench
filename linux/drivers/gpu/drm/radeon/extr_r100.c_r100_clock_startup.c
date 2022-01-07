
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV250 ;
 scalar_t__ CHIP_RV280 ;
 int RREG32_PLL (int ) ;
 int R_00000D_SCLK_CNTL ;
 int S_00000D_FORCE_CP (int) ;
 int S_00000D_FORCE_DISP1 (int) ;
 int S_00000D_FORCE_DISP2 (int) ;
 int S_00000D_FORCE_VIP (int) ;
 int WREG32_PLL (int ,int) ;
 int radeon_dynclks ;
 int radeon_legacy_set_clock_gating (struct radeon_device*,int) ;

__attribute__((used)) static void r100_clock_startup(struct radeon_device *rdev)
{
 u32 tmp;

 if (radeon_dynclks != -1 && radeon_dynclks)
  radeon_legacy_set_clock_gating(rdev, 1);

 tmp = RREG32_PLL(R_00000D_SCLK_CNTL);
 tmp |= S_00000D_FORCE_CP(1) | S_00000D_FORCE_VIP(1);
 if ((rdev->family == CHIP_RV250) || (rdev->family == CHIP_RV280))
  tmp |= S_00000D_FORCE_DISP1(1) | S_00000D_FORCE_DISP2(1);
 WREG32_PLL(R_00000D_SCLK_CNTL, tmp);
}
