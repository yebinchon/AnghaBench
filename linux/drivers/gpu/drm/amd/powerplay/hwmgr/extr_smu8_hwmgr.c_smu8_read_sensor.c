
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
typedef size_t u16 ;
struct smu8_hwmgr {int vce_power_gated; int uvd_power_gated; } ;
struct TYPE_5__ {struct phm_uvd_clock_voltage_dependency_table* uvd_clock_voltage_dependency_table; struct phm_vce_clock_voltage_dependency_table* vce_clock_voltage_dependency_table; struct phm_clock_voltage_dependency_table* vddc_dependency_on_sclk; } ;
struct pp_hwmgr {int device; TYPE_1__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_vce_clock_voltage_dependency_table {TYPE_4__* entries; } ;
struct phm_uvd_clock_voltage_dependency_table {TYPE_3__* entries; } ;
struct phm_clock_voltage_dependency_table {TYPE_2__* entries; } ;
struct TYPE_8__ {size_t ecclk; } ;
struct TYPE_7__ {size_t vclk; size_t dclk; } ;
struct TYPE_6__ {size_t clk; } ;
 int CGS_IND_REG__SMC ;
 size_t CURRENT_GFX_VID_MASK ;
 size_t CURRENT_GFX_VID__SHIFT ;
 size_t CURRENT_NB_VID_MASK ;
 size_t CURRENT_NB_VID__SHIFT ;
 int CURR_SCLK_INDEX ;
 int CURR_UVD_INDEX ;
 int CURR_VCE_INDEX ;
 int EINVAL ;
 size_t NUM_SCLK_LEVELS ;
 size_t PHM_GET_FIELD (size_t,int ,int ) ;
 int PPSMC_MSG_GetAverageGraphicsActivity ;
 size_t SMU8_MAX_HARDWARE_POWERLEVELS ;
 int TARGET_AND_CURRENT_PROFILE_INDEX ;
 int TARGET_AND_CURRENT_PROFILE_INDEX_2 ;
 size_t cgs_read_ind_register (int ,int ,int ) ;
 size_t cgs_read_register (int ,int ) ;
 int ixSMUSVI_GFX_CURRENTVID ;
 int ixSMUSVI_NB_CURRENTVID ;
 int ixTARGET_AND_CURRENT_PROFILE_INDEX ;
 int ixTARGET_AND_CURRENT_PROFILE_INDEX_2 ;
 int mmSMU_MP1_SRBM2P_ARG_0 ;
 int smu8_convert_8Bit_index_to_voltage (struct pp_hwmgr*,size_t) ;
 size_t smu8_thermal_get_temperature (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu8_read_sensor(struct pp_hwmgr *hwmgr, int idx,
     void *value, int *size)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 struct phm_clock_voltage_dependency_table *table =
    hwmgr->dyn_state.vddc_dependency_on_sclk;

 struct phm_vce_clock_voltage_dependency_table *vce_table =
  hwmgr->dyn_state.vce_clock_voltage_dependency_table;

 struct phm_uvd_clock_voltage_dependency_table *uvd_table =
  hwmgr->dyn_state.uvd_clock_voltage_dependency_table;

 uint32_t sclk_index = PHM_GET_FIELD(cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixTARGET_AND_CURRENT_PROFILE_INDEX),
     TARGET_AND_CURRENT_PROFILE_INDEX, CURR_SCLK_INDEX);
 uint32_t uvd_index = PHM_GET_FIELD(cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixTARGET_AND_CURRENT_PROFILE_INDEX_2),
     TARGET_AND_CURRENT_PROFILE_INDEX_2, CURR_UVD_INDEX);
 uint32_t vce_index = PHM_GET_FIELD(cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixTARGET_AND_CURRENT_PROFILE_INDEX_2),
     TARGET_AND_CURRENT_PROFILE_INDEX_2, CURR_VCE_INDEX);

 uint32_t sclk, vclk, dclk, ecclk, tmp, activity_percent;
 uint16_t vddnb, vddgfx;
 int result;


 if (*size < 4)
  return -EINVAL;
 *size = 4;

 switch (idx) {
 case 137:
  if (sclk_index < NUM_SCLK_LEVELS) {
   sclk = table->entries[sclk_index].clk;
   *((uint32_t *)value) = sclk;
   return 0;
  }
  return -EINVAL;
 case 128:
  tmp = (cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixSMUSVI_NB_CURRENTVID) &
   CURRENT_NB_VID_MASK) >> CURRENT_NB_VID__SHIFT;
  vddnb = smu8_convert_8Bit_index_to_voltage(hwmgr, tmp) / 4;
  *((uint32_t *)value) = vddnb;
  return 0;
 case 129:
  tmp = (cgs_read_ind_register(hwmgr->device, CGS_IND_REG__SMC, ixSMUSVI_GFX_CURRENTVID) &
   CURRENT_GFX_VID_MASK) >> CURRENT_GFX_VID__SHIFT;
  vddgfx = smu8_convert_8Bit_index_to_voltage(hwmgr, (u16)tmp) / 4;
  *((uint32_t *)value) = vddgfx;
  return 0;
 case 132:
  if (!data->uvd_power_gated) {
   if (uvd_index >= SMU8_MAX_HARDWARE_POWERLEVELS) {
    return -EINVAL;
   } else {
    vclk = uvd_table->entries[uvd_index].vclk;
    *((uint32_t *)value) = vclk;
    return 0;
   }
  }
  *((uint32_t *)value) = 0;
  return 0;
 case 134:
  if (!data->uvd_power_gated) {
   if (uvd_index >= SMU8_MAX_HARDWARE_POWERLEVELS) {
    return -EINVAL;
   } else {
    dclk = uvd_table->entries[uvd_index].dclk;
    *((uint32_t *)value) = dclk;
    return 0;
   }
  }
  *((uint32_t *)value) = 0;
  return 0;
 case 131:
  if (!data->vce_power_gated) {
   if (vce_index >= SMU8_MAX_HARDWARE_POWERLEVELS) {
    return -EINVAL;
   } else {
    ecclk = vce_table->entries[vce_index].ecclk;
    *((uint32_t *)value) = ecclk;
    return 0;
   }
  }
  *((uint32_t *)value) = 0;
  return 0;
 case 136:
  result = smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetAverageGraphicsActivity);
  if (0 == result) {
   activity_percent = cgs_read_register(hwmgr->device, mmSMU_MP1_SRBM2P_ARG_0);
   activity_percent = activity_percent > 100 ? 100 : activity_percent;
  } else {
   activity_percent = 50;
  }
  *((uint32_t *)value) = activity_percent;
  return 0;
 case 133:
  *((uint32_t *)value) = data->uvd_power_gated ? 0 : 1;
  return 0;
 case 130:
  *((uint32_t *)value) = data->vce_power_gated ? 0 : 1;
  return 0;
 case 135:
  *((uint32_t *)value) = smu8_thermal_get_temperature(hwmgr);
  return 0;
 default:
  return -EINVAL;
 }
}
