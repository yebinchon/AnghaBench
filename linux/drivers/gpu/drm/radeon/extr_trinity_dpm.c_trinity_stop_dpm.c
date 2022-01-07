
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CG_CG_VOLTAGE_CNTL ;
 int EN ;
 int RREG32_SMC (int ) ;
 int SCLK_DPM_EN_MASK ;
 int SMU_SCLK_DPM_CNTL ;
 int VOLTAGE_CHG_EN_MASK ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SMC (int ,int) ;
 int trinity_dpm_config (struct radeon_device*,int) ;

__attribute__((used)) static void trinity_stop_dpm(struct radeon_device *rdev)
{
 u32 sclk_dpm_cntl;

 WREG32_P(CG_CG_VOLTAGE_CNTL, EN, ~EN);

 sclk_dpm_cntl = RREG32_SMC(SMU_SCLK_DPM_CNTL);
 sclk_dpm_cntl &= ~(SCLK_DPM_EN_MASK | VOLTAGE_CHG_EN_MASK);
 WREG32_SMC(SMU_SCLK_DPM_CNTL, sclk_dpm_cntl);

 trinity_dpm_config(rdev, 0);
}
