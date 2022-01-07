
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int THM ;
 int THM_TCON_CUR_TMP__CUR_TEMP_MASK ;
 int THM_TCON_CUR_TMP__CUR_TEMP_RANGE_SEL_MASK ;
 int THM_TCON_CUR_TMP__CUR_TEMP__SHIFT ;
 int mmTHM_TCON_CUR_TMP ;

__attribute__((used)) static int smu10_thermal_get_temperature(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;
 uint32_t reg_value = RREG32_SOC15(THM, 0, mmTHM_TCON_CUR_TMP);
 int cur_temp =
  (reg_value & THM_TCON_CUR_TMP__CUR_TEMP_MASK) >> THM_TCON_CUR_TMP__CUR_TEMP__SHIFT;

 if (cur_temp & THM_TCON_CUR_TMP__CUR_TEMP_RANGE_SEL_MASK)
  cur_temp = ((cur_temp / 8) - 49) * PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
 else
  cur_temp = (cur_temp / 8) * PP_TEMPERATURE_UNITS_PER_CENTIGRADES;

 return cur_temp;
}
