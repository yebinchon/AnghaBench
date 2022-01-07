
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum r600_td { ____Placeholder_r600_td } r600_td ;


 scalar_t__ CG_FFCT_0 ;
 int DTC_0 (int ) ;
 int DTC_0_MASK ;
 int FIR_FORCE_TREND_SEL ;
 int FIR_TREND_MODE ;
 int R600_TD_AUTO ;
 int R600_TD_DFLT ;
 int R600_TD_DOWN ;
 int R600_TD_UP ;
 scalar_t__ SCLK_PWRMGT_CNTL ;
 int SUMO_PM_NUMBER_OF_TC ;
 int UTC_0 (int ) ;
 int UTC_0_MASK ;
 int WREG32_P (scalar_t__,int ,int ) ;
 int * sumo_dtc ;
 int * sumo_utc ;

__attribute__((used)) static void sumo_program_tp(struct radeon_device *rdev)
{
 int i;
 enum r600_td td = R600_TD_DFLT;

 for (i = 0; i < SUMO_PM_NUMBER_OF_TC; i++) {
  WREG32_P(CG_FFCT_0 + (i * 4), UTC_0(sumo_utc[i]), ~UTC_0_MASK);
  WREG32_P(CG_FFCT_0 + (i * 4), DTC_0(sumo_dtc[i]), ~DTC_0_MASK);
 }

 if (td == R600_TD_AUTO)
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~FIR_FORCE_TREND_SEL);
 else
  WREG32_P(SCLK_PWRMGT_CNTL, FIR_FORCE_TREND_SEL, ~FIR_FORCE_TREND_SEL);

 if (td == R600_TD_UP)
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~FIR_TREND_MODE);

 if (td == R600_TD_DOWN)
  WREG32_P(SCLK_PWRMGT_CNTL, FIR_TREND_MODE, ~FIR_TREND_MODE);
}
