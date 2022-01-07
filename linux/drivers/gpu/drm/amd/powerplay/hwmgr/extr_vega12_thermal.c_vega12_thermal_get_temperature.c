
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int CG_MULT_THERMAL_STATUS__CTF_TEMP_MASK ;
 int CG_MULT_THERMAL_STATUS__CTF_TEMP__SHIFT ;
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int THM ;
 int mmCG_MULT_THERMAL_STATUS ;

int vega12_thermal_get_temperature(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;
 int temp = 0;

 temp = RREG32_SOC15(THM, 0, mmCG_MULT_THERMAL_STATUS);

 temp = (temp & CG_MULT_THERMAL_STATUS__CTF_TEMP_MASK) >>
   CG_MULT_THERMAL_STATUS__CTF_TEMP__SHIFT;

 temp = temp & 0x1ff;

 temp *= PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
 return temp;
}
