
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct evergreen_power_info {scalar_t__ sclk_deep_sleep; } ;


 int AUTOSCALE_ON_SS_CLEAR ;
 int CG_SPLL_AUTOSCALE_CNTL ;
 int DEEP_SLEEP_CLK_SEL (int) ;
 int DEEP_SLEEP_CLK_SEL_MASK ;
 int MISC_CLK_CNTL ;
 int WREG32_P (int ,int ,int ) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;

__attribute__((used)) static void si_program_ds_registers(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 u32 tmp = 1;

 if (eg_pi->sclk_deep_sleep) {
  WREG32_P(MISC_CLK_CNTL, DEEP_SLEEP_CLK_SEL(tmp), ~DEEP_SLEEP_CLK_SEL_MASK);
  WREG32_P(CG_SPLL_AUTOSCALE_CNTL, AUTOSCALE_ON_SS_CLEAR,
    ~AUTOSCALE_ON_SS_CLEAR);
 }
}
