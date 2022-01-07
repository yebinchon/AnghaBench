
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int CG_MULT_THERMAL_STATUS ;
 int CTF_TEMP ;
 int PHM_READ_VFPF_INDIRECT_FIELD (int ,int ,int ,int ) ;
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int SMU7_THERMAL_MAXIMUM_TEMP_READING ;

int smu7_thermal_get_temperature(struct pp_hwmgr *hwmgr)
{
 int temp;

 temp = PHM_READ_VFPF_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   CG_MULT_THERMAL_STATUS, CTF_TEMP);


 if (temp & 0x200)
  temp = SMU7_THERMAL_MAXIMUM_TEMP_READING;
 else
  temp = temp & 0x1ff;

 temp *= PP_TEMPERATURE_UNITS_PER_CENTIGRADES;

 return temp;
}
