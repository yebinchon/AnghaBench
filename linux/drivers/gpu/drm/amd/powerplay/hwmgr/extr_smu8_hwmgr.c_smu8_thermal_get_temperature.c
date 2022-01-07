
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int CUR_TEMP ;
 int CUR_TEMP_RANGE_SEL ;
 int PHM_GET_FIELD (int,int ,int ) ;
 int PP_TEMPERATURE_UNITS_PER_CENTIGRADES ;
 int THM_TCON_CUR_TMP ;
 int cgs_read_ind_register (int ,int ,int ) ;
 int ixTHM_TCON_CUR_TMP ;

__attribute__((used)) static int smu8_thermal_get_temperature(struct pp_hwmgr *hwmgr)
{
 int actual_temp = 0;
 uint32_t val = cgs_read_ind_register(hwmgr->device,
          CGS_IND_REG__SMC, ixTHM_TCON_CUR_TMP);
 uint32_t temp = PHM_GET_FIELD(val, THM_TCON_CUR_TMP, CUR_TEMP);

 if (PHM_GET_FIELD(val, THM_TCON_CUR_TMP, CUR_TEMP_RANGE_SEL))
  actual_temp = ((temp / 8) - 49) * PP_TEMPERATURE_UNITS_PER_CENTIGRADES;
 else
  actual_temp = (temp / 8) * PP_TEMPERATURE_UNITS_PER_CENTIGRADES;

 return actual_temp;
}
