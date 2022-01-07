
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;


 int CG_THERMAL_INT ;
 int DRM_DEBUG_KMS (char*) ;
 int EINVAL ;
 int PPSMC_MSG_EnableThermalInterrupt ;
 scalar_t__ PPSMC_Result_OK ;
 int RREG32 (int ) ;
 int THERM_INT_MASK_HIGH ;
 int THERM_INT_MASK_LOW ;
 int WREG32 (int ,int) ;
 scalar_t__ amdgpu_si_send_msg_to_smc (struct amdgpu_device*,int ) ;

__attribute__((used)) static int si_thermal_enable_alert(struct amdgpu_device *adev,
       bool enable)
{
 u32 thermal_int = RREG32(CG_THERMAL_INT);

 if (enable) {
  PPSMC_Result result;

  thermal_int &= ~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);
  WREG32(CG_THERMAL_INT, thermal_int);
  result = amdgpu_si_send_msg_to_smc(adev, PPSMC_MSG_EnableThermalInterrupt);
  if (result != PPSMC_Result_OK) {
   DRM_DEBUG_KMS("Could not enable thermal interrupts.\n");
   return -EINVAL;
  }
 } else {
  thermal_int |= THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW;
  WREG32(CG_THERMAL_INT, thermal_int);
 }

 return 0;
}
