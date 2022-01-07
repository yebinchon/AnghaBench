
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dpm_thermal; } ;
struct radeon_device {TYPE_1__ irq; } ;
typedef scalar_t__ PPSMC_Result ;


 int CG_THERMAL_INT ;
 int DRM_DEBUG_KMS (char*) ;
 int EINVAL ;
 int PPSMC_MSG_Thermal_Cntl_Disable ;
 int PPSMC_MSG_Thermal_Cntl_Enable ;
 scalar_t__ PPSMC_Result_OK ;
 int RREG32_SMC (int ) ;
 int THERM_INT_MASK_HIGH ;
 int THERM_INT_MASK_LOW ;
 int WREG32_SMC (int ,int) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ci_thermal_enable_alert(struct radeon_device *rdev,
       bool enable)
{
 u32 thermal_int = RREG32_SMC(CG_THERMAL_INT);
 PPSMC_Result result;

 if (enable) {
  thermal_int &= ~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);
  WREG32_SMC(CG_THERMAL_INT, thermal_int);
  rdev->irq.dpm_thermal = 0;
  result = ci_send_msg_to_smc(rdev, PPSMC_MSG_Thermal_Cntl_Enable);
  if (result != PPSMC_Result_OK) {
   DRM_DEBUG_KMS("Could not enable thermal interrupts.\n");
   return -EINVAL;
  }
 } else {
  thermal_int |= THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW;
  WREG32_SMC(CG_THERMAL_INT, thermal_int);
  rdev->irq.dpm_thermal = 1;
  result = ci_send_msg_to_smc(rdev, PPSMC_MSG_Thermal_Cntl_Disable);
  if (result != PPSMC_Result_OK) {
   DRM_DEBUG_KMS("Could not disable thermal interrupts.\n");
   return -EINVAL;
  }
 }

 return 0;
}
