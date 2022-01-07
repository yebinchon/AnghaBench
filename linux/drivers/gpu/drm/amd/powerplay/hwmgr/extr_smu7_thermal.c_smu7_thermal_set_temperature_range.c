
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int CG_THERMAL_CTRL ;
 int CG_THERMAL_INT ;
 int DIG_THERM_DPM ;
 int DIG_THERM_INTH ;
 int DIG_THERM_INTL ;
 int EINVAL ;
 int PHM_WRITE_VFPF_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int SMU7_THERMAL_MAXIMUM_ALERT_TEMP ;
 int SMU7_THERMAL_MINIMUM_ALERT_TEMP ;

__attribute__((used)) static int smu7_thermal_set_temperature_range(struct pp_hwmgr *hwmgr,
  int low_temp, int high_temp)
{
 int low = SMU7_THERMAL_MINIMUM_ALERT_TEMP *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
 int high = SMU7_THERMAL_MAXIMUM_ALERT_TEMP *
   PP_TEMPERATURE_UNITS_PER_CENTIGRADES;

 if (low < low_temp)
  low = low_temp;
 if (high > high_temp)
  high = high_temp;

 if (low > high)
  return -EINVAL;

 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_THERMAL_INT, DIG_THERM_INTH,
   (high / PP_TEMPERATURE_UNITS_PER_CENTIGRADES));
 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_THERMAL_INT, DIG_THERM_INTL,
   (low / PP_TEMPERATURE_UNITS_PER_CENTIGRADES));
 PHM_WRITE_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_THERMAL_CTRL, DIG_THERM_DPM,
   (high / PP_TEMPERATURE_UNITS_PER_CENTIGRADES));

 return 0;
}
