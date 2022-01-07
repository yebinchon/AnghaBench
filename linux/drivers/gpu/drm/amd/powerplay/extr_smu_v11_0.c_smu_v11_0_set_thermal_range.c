
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_temperature_range {int min; int max; } ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int DIG_THERM_INTH ;
 int DIG_THERM_INTL ;
 int EINVAL ;
 int MAX_IH_CREDIT ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SMU_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int SMU_THERMAL_MAXIMUM_ALERT_TEMP ;
 int SMU_THERMAL_MINIMUM_ALERT_TEMP ;
 int THERM_IH_HW_ENA ;
 int THERM_INTH_MASK ;
 int THERM_INTL_MASK ;
 int THM ;
 int THM_THERMAL_INT_CTRL ;
 int THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int max (int,int) ;
 int min (int,int) ;
 int mmTHM_THERMAL_INT_CTRL ;

__attribute__((used)) static int smu_v11_0_set_thermal_range(struct smu_context *smu,
           struct smu_temperature_range range)
{
 struct amdgpu_device *adev = smu->adev;
 int low = SMU_THERMAL_MINIMUM_ALERT_TEMP;
 int high = SMU_THERMAL_MAXIMUM_ALERT_TEMP;
 uint32_t val;

 low = max(SMU_THERMAL_MINIMUM_ALERT_TEMP,
   range.min / SMU_TEMPERATURE_UNITS_PER_CENTIGRADES);
 high = min(SMU_THERMAL_MAXIMUM_ALERT_TEMP,
   range.max / SMU_TEMPERATURE_UNITS_PER_CENTIGRADES);

 if (low > high)
  return -EINVAL;

 val = RREG32_SOC15(THM, 0, mmTHM_THERMAL_INT_CTRL);
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, MAX_IH_CREDIT, 5);
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, THERM_IH_HW_ENA, 1);
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, THERM_INTH_MASK, 0);
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, THERM_INTL_MASK, 0);
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, DIG_THERM_INTH, (high & 0xff));
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, DIG_THERM_INTL, (low & 0xff));
 val = val & (~THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK);

 WREG32_SOC15(THM, 0, mmTHM_THERMAL_INT_CTRL, val);

 return 0;
}
