
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int FORCE_TREND_SEL ;
 int FVTHROT_CNTRL_REG ;
 int TREND_SEL_MODE ;
 int WREG32_P (int ,int ,int) ;

__attribute__((used)) static void rs780_set_engine_clock_tdc(struct radeon_device *rdev)
{
 WREG32_P(FVTHROT_CNTRL_REG, 0, ~(FORCE_TREND_SEL | TREND_SEL_MODE));
}
