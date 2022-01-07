
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int pcie_dpm_key_disabled; } ;
typedef scalar_t__ PPSMC_Result ;


 int BIF_LNCNT_RESET ;
 int DYNAMIC_PM_EN ;
 int EINVAL ;
 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int PPSMC_MSG_PCIeDPM_Enable ;
 int PPSMC_MSG_Voltage_Cntl_Enable ;
 scalar_t__ PPSMC_Result_OK ;
 int RESET_LNCNT_EN ;
 int RREG32_SMC (int ) ;
 int SCLK_PWRMGT_CNTL ;
 int SMU7_SoftRegisters ;
 int VoltageChangeTimeout ;
 int WREG32_P (int ,int ,int ) ;
 int WREG32_SMC (int ,int ) ;
 int ci_enable_sclk_mclk_dpm (struct radeon_device*,int) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;
 int ci_write_smc_soft_register (struct radeon_device*,int ,int) ;
 int offsetof (int ,int ) ;

__attribute__((used)) static int ci_start_dpm(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 PPSMC_Result smc_result;
 int ret;
 u32 tmp;

 tmp = RREG32_SMC(GENERAL_PWRMGT);
 tmp |= GLOBAL_PWRMGT_EN;
 WREG32_SMC(GENERAL_PWRMGT, tmp);

 tmp = RREG32_SMC(SCLK_PWRMGT_CNTL);
 tmp |= DYNAMIC_PM_EN;
 WREG32_SMC(SCLK_PWRMGT_CNTL, tmp);

 ci_write_smc_soft_register(rdev, offsetof(SMU7_SoftRegisters, VoltageChangeTimeout), 0x1000);

 WREG32_P(BIF_LNCNT_RESET, 0, ~RESET_LNCNT_EN);

 smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_Voltage_Cntl_Enable);
 if (smc_result != PPSMC_Result_OK)
  return -EINVAL;

 ret = ci_enable_sclk_mclk_dpm(rdev, 1);
 if (ret)
  return ret;

 if (!pi->pcie_dpm_key_disabled) {
  smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_PCIeDPM_Enable);
  if (smc_result != PPSMC_Result_OK)
   return -EINVAL;
 }

 return 0;
}
