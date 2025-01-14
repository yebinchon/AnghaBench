
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int bootup_uma_clock; int bootup_engine_clock; int dentist_vco_freq; int system_config; int htc_hyst_lmt; int htc_tmp_lmt; int nb_dpm_enable; int* nbp_memory_clock; int* nbp_n_clock; int* display_clock; int uma_channel_number; void** nbp_voltage_index; void* bootup_nb_voltage_index; } ;
struct smu8_hwmgr {TYPE_3__ sys_info; scalar_t__ enable_nb_ps_policy; } ;
struct TYPE_9__ {int max_clock_voltage_on_ac; } ;
struct TYPE_7__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_4__ dyn_state; TYPE_2__ platform_descriptor; int adev; struct smu8_hwmgr* backend; } ;
struct TYPE_10__ {int ucHtcHystLmt; int ucHtcTmpLmt; int * sDISPCLK_Voltage; int ucUMAChannelNumber; int ulGPUCapInfo; int * usNBPStateVoltage; TYPE_1__* sDispClkVoltageMapping; int * ulNbpStateNClkFreq; int * ulNbpStateMemclkFreq; int ulSystemConfig; int usBootUpNBVoltage; int ulDentistVCOFreq; int ulBootUpEngineClock; int ulBootUpUMAClock; } ;
struct TYPE_6__ {int ulMaximumSupportedCLK; } ;
typedef TYPE_5__ ATOM_INTEGRATED_SYSTEM_INFO_V1_9 ;


 int DATA ;
 int EINVAL ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int IntegratedSystemInfo ;
 size_t MAX_DISPLAY_CLOCK_LEVEL ;
 int PHM_PlatformCaps_EnableDFSBypass ;
 size_t SMU8_NUM_NBPMEMORYCLOCK ;
 size_t SMU8_NUM_NBPSTATES ;
 int SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int phm_cap_set (int ,int ) ;
 int pr_err (char*,...) ;
 int smu8_construct_max_power_limits_table (struct pp_hwmgr*,int *) ;
 int smu8_init_dynamic_state_adjustment_rule_settings (struct pp_hwmgr*,int *) ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int*,int*) ;

__attribute__((used)) static int smu8_get_system_info_data(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 ATOM_INTEGRATED_SYSTEM_INFO_V1_9 *info = ((void*)0);
 uint32_t i;
 int result = 0;
 uint8_t frev, crev;
 uint16_t size;

 info = (ATOM_INTEGRATED_SYSTEM_INFO_V1_9 *)smu_atom_get_data_table(hwmgr->adev,
   GetIndexIntoMasterTable(DATA, IntegratedSystemInfo),
   &size, &frev, &crev);

 if (info == ((void*)0)) {
  pr_err("Could not retrieve the Integrated System Info Table!\n");
  return -EINVAL;
 }

 if (crev != 9) {
  pr_err("Unsupported IGP table: %d %d\n", frev, crev);
  return -EINVAL;
 }

 data->sys_info.bootup_uma_clock =
       le32_to_cpu(info->ulBootUpUMAClock);

 data->sys_info.bootup_engine_clock =
    le32_to_cpu(info->ulBootUpEngineClock);

 data->sys_info.dentist_vco_freq =
       le32_to_cpu(info->ulDentistVCOFreq);

 data->sys_info.system_config =
         le32_to_cpu(info->ulSystemConfig);

 data->sys_info.bootup_nb_voltage_index =
      le16_to_cpu(info->usBootUpNBVoltage);

 data->sys_info.htc_hyst_lmt =
   (info->ucHtcHystLmt == 0) ? 5 : info->ucHtcHystLmt;

 data->sys_info.htc_tmp_lmt =
   (info->ucHtcTmpLmt == 0) ? 203 : info->ucHtcTmpLmt;

 if (data->sys_info.htc_tmp_lmt <=
   data->sys_info.htc_hyst_lmt) {
  pr_err("The htcTmpLmt should be larger than htcHystLmt.\n");
  return -EINVAL;
 }

 data->sys_info.nb_dpm_enable =
    data->enable_nb_ps_policy &&
    (le32_to_cpu(info->ulSystemConfig) >> 3 & 0x1);

 for (i = 0; i < SMU8_NUM_NBPSTATES; i++) {
  if (i < SMU8_NUM_NBPMEMORYCLOCK) {
   data->sys_info.nbp_memory_clock[i] =
     le32_to_cpu(info->ulNbpStateMemclkFreq[i]);
  }
  data->sys_info.nbp_n_clock[i] =
       le32_to_cpu(info->ulNbpStateNClkFreq[i]);
 }

 for (i = 0; i < MAX_DISPLAY_CLOCK_LEVEL; i++) {
  data->sys_info.display_clock[i] =
     le32_to_cpu(info->sDispClkVoltageMapping[i].ulMaximumSupportedCLK);
 }


 for (i = 0; i < SMU8_NUM_NBPSTATES; i++) {
  data->sys_info.nbp_voltage_index[i] =
        le16_to_cpu(info->usNBPStateVoltage[i]);
 }

 if (!data->sys_info.nb_dpm_enable) {
  for (i = 1; i < SMU8_NUM_NBPSTATES; i++) {
   if (i < SMU8_NUM_NBPMEMORYCLOCK) {
    data->sys_info.nbp_memory_clock[i] =
        data->sys_info.nbp_memory_clock[0];
   }
   data->sys_info.nbp_n_clock[i] =
        data->sys_info.nbp_n_clock[0];
   data->sys_info.nbp_voltage_index[i] =
        data->sys_info.nbp_voltage_index[0];
  }
 }

 if (le32_to_cpu(info->ulGPUCapInfo) &
  SYS_INFO_GPUCAPS__ENABEL_DFS_BYPASS) {
  phm_cap_set(hwmgr->platform_descriptor.platformCaps,
        PHM_PlatformCaps_EnableDFSBypass);
 }

 data->sys_info.uma_channel_number = info->ucUMAChannelNumber;

 smu8_construct_max_power_limits_table (hwmgr,
        &hwmgr->dyn_state.max_clock_voltage_on_ac);

 smu8_init_dynamic_state_adjustment_rule_settings(hwmgr,
        &info->sDISPCLK_Voltage[0]);

 return result;
}
