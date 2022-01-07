
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int MPLL_CNTL_MODE ;
 int SS_SSEN ;
 int WREG32_P (int ,int ,int ) ;

void rv740_enable_mclk_spread_spectrum(struct radeon_device *rdev,
           bool enable)
{
 if (enable)
  WREG32_P(MPLL_CNTL_MODE, SS_SSEN, ~SS_SSEN);
 else
  WREG32_P(MPLL_CNTL_MODE, 0, ~SS_SSEN);
}
