
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int MPLL_PWRMGT_OFF ;
 int SCLK_PWRMGT_CNTL ;
 int SCLK_PWRMGT_OFF ;
 int TCI_MCLK_PWRMGT_CNTL ;
 int WREG32_P (int ,int ,int ) ;

void rv730_start_dpm(struct radeon_device *rdev)
{
 WREG32_P(SCLK_PWRMGT_CNTL, 0, ~SCLK_PWRMGT_OFF);

 WREG32_P(TCI_MCLK_PWRMGT_CNTL, 0, ~MPLL_PWRMGT_OFF);

 WREG32_P(GENERAL_PWRMGT, GLOBAL_PWRMGT_EN, ~GLOBAL_PWRMGT_EN);
}
