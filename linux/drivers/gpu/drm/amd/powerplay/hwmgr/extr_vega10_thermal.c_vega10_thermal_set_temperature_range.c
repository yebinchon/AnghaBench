
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;
struct PP_TemperatureRange {int min; int max; } ;


 int DIG_THERM_INTH ;
 int DIG_THERM_INTL ;
 int EINVAL ;
 int MAX_IH_CREDIT ;
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int THERM_IH_HW_ENA ;
 int THM ;
 int THM_THERMAL_INT_CTRL ;
 int THM_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK ;
 int THM_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK ;
 int THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK ;
 int VEGA10_THERMAL_MAXIMUM_ALERT_TEMP ;
 int VEGA10_THERMAL_MINIMUM_ALERT_TEMP ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmTHM_THERMAL_INT_CTRL ;

__attribute__((used)) static int vega10_thermal_set_temperature_range(struct pp_hwmgr *hwmgr,
  struct PP_TemperatureRange *range)
{
 struct amdgpu_device *adev = hwmgr->adev;
 int low = VEGA10_THERMAL_MINIMUM_ALERT_TEMP *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
 int high = VEGA10_THERMAL_MAXIMUM_ALERT_TEMP *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
 uint32_t val;

 if (low < range->min)
  low = range->min;
 if (high > range->max)
  high = range->max;

 if (low > high)
  return -EINVAL;

 val = RREG32_SOC15(THM, 0, mmTHM_THERMAL_INT_CTRL);

 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, MAX_IH_CREDIT, 5);
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, THERM_IH_HW_ENA, 1);
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, DIG_THERM_INTH, (high / PP_TEMPERATURE_UNITS_PER_CENTIGRADES));
 val = REG_SET_FIELD(val, THM_THERMAL_INT_CTRL, DIG_THERM_INTL, (low / PP_TEMPERATURE_UNITS_PER_CENTIGRADES));
 val &= (~THM_THERMAL_INT_CTRL__THERM_TRIGGER_MASK_MASK) &
   (~THM_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK) &
   (~THM_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK);

 WREG32_SOC15(THM, 0, mmTHM_THERMAL_INT_CTRL, val);

 return 0;
}
