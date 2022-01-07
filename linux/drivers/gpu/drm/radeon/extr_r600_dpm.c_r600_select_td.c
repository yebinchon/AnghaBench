
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum r600_td { ____Placeholder_r600_td } r600_td ;


 int FIR_FORCE_TREND_SEL ;
 int FIR_TREND_MODE ;
 int R600_TD_AUTO ;
 int R600_TD_DOWN ;
 int R600_TD_UP ;
 int SCLK_PWRMGT_CNTL ;
 int WREG32_P (int ,int ,int ) ;

void r600_select_td(struct radeon_device *rdev,
      enum r600_td td)
{
 if (td == R600_TD_AUTO)
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~FIR_FORCE_TREND_SEL);
 else
  WREG32_P(SCLK_PWRMGT_CNTL, FIR_FORCE_TREND_SEL, ~FIR_FORCE_TREND_SEL);
 if (td == R600_TD_UP)
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~FIR_TREND_MODE);
 if (td == R600_TD_DOWN)
  WREG32_P(SCLK_PWRMGT_CNTL, FIR_TREND_MODE, ~FIR_TREND_MODE);
}
