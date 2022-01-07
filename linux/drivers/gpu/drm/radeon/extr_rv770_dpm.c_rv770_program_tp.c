
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum r600_td { ____Placeholder_r600_td } r600_td ;


 scalar_t__ CG_FFCT_0 ;
 int DTC_0 (int ) ;
 int FIR_FORCE_TREND_SEL ;
 int FIR_TREND_MODE ;
 int R600_PM_NUMBER_OF_TC ;
 int R600_TD_AUTO ;
 int R600_TD_DFLT ;
 int R600_TD_DOWN ;
 int R600_TD_UP ;
 int SCLK_PWRMGT_CNTL ;
 int UTC_0 (int ) ;
 int WREG32 (scalar_t__,int) ;
 int WREG32_P (int ,int ,int ) ;
 int * r600_dtc ;
 int * r600_utc ;

void rv770_program_tp(struct radeon_device *rdev)
{
 int i;
 enum r600_td td = R600_TD_DFLT;

 for (i = 0; i < R600_PM_NUMBER_OF_TC; i++)
  WREG32(CG_FFCT_0 + (i * 4), (UTC_0(r600_utc[i]) | DTC_0(r600_dtc[i])));

 if (td == R600_TD_AUTO)
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~FIR_FORCE_TREND_SEL);
 else
  WREG32_P(SCLK_PWRMGT_CNTL, FIR_FORCE_TREND_SEL, ~FIR_FORCE_TREND_SEL);
 if (td == R600_TD_UP)
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~FIR_TREND_MODE);
 if (td == R600_TD_DOWN)
  WREG32_P(SCLK_PWRMGT_CNTL, FIR_TREND_MODE, ~FIR_TREND_MODE);
}
