
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* FClocks; } ;
struct smu10_hwmgr {int gfx_min_freq_limit; int gfx_max_freq_limit; TYPE_2__ clock_table; } ;
struct pp_hwmgr {int smu_version; TYPE_3__* display_config; struct smu10_hwmgr* backend; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;
struct TYPE_6__ {int min_core_set_clock; int min_mem_set_clock; int num_display; } ;
struct TYPE_4__ {int Freq; } ;
 int PPSMC_MSG_SetHardMinFclkByFreq ;
 int PPSMC_MSG_SetHardMinGfxClk ;
 int PPSMC_MSG_SetHardMinSocclkByFreq ;
 int PPSMC_MSG_SetHardMinVcn ;
 int PPSMC_MSG_SetSoftMaxFclkByFreq ;
 int PPSMC_MSG_SetSoftMaxGfxClk ;
 int PPSMC_MSG_SetSoftMaxSocclkByFreq ;
 int PPSMC_MSG_SetSoftMaxVcn ;
 int SMU10_UMD_PSTATE_FCLK ;
 int SMU10_UMD_PSTATE_GFXCLK ;
 int SMU10_UMD_PSTATE_MIN_SOCCLK ;
 int SMU10_UMD_PSTATE_MIN_VCE ;
 int SMU10_UMD_PSTATE_PEAK_FCLK ;
 int SMU10_UMD_PSTATE_PEAK_SOCCLK ;
 int SMU10_UMD_PSTATE_SOCCLK ;
 int SMU10_UMD_PSTATE_VCE ;
 int pr_info (char*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu10_dpm_force_dpm_level(struct pp_hwmgr *hwmgr,
    enum amd_dpm_forced_level level)
{
 struct smu10_hwmgr *data = hwmgr->backend;
 uint32_t min_sclk = hwmgr->display_config->min_core_set_clock;
 uint32_t min_mclk = hwmgr->display_config->min_mem_set_clock/100;

 if (hwmgr->smu_version < 0x1E3700) {
  pr_info("smu firmware version too old, can not set dpm level\n");
  return 0;
 }

 if (min_sclk < data->gfx_min_freq_limit)
  min_sclk = data->gfx_min_freq_limit;

 min_sclk /= 100;
 if (min_mclk < data->clock_table.FClocks[0].Freq)
  min_mclk = data->clock_table.FClocks[0].Freq;

 switch (level) {
 case 135:
 case 129:
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinGfxClk,
      data->gfx_max_freq_limit/100);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinFclkByFreq,
      SMU10_UMD_PSTATE_PEAK_FCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinSocclkByFreq,
      SMU10_UMD_PSTATE_PEAK_SOCCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinVcn,
      SMU10_UMD_PSTATE_VCE);

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxGfxClk,
      data->gfx_max_freq_limit/100);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxFclkByFreq,
      SMU10_UMD_PSTATE_PEAK_FCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxSocclkByFreq,
      SMU10_UMD_PSTATE_PEAK_SOCCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxVcn,
      SMU10_UMD_PSTATE_VCE);
  break;
 case 130:
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinGfxClk,
      min_sclk);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxGfxClk,
      min_sclk);
  break;
 case 131:
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinFclkByFreq,
      min_mclk);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxFclkByFreq,
      min_mclk);
  break;
 case 128:
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinGfxClk,
      SMU10_UMD_PSTATE_GFXCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinFclkByFreq,
      SMU10_UMD_PSTATE_FCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinSocclkByFreq,
      SMU10_UMD_PSTATE_SOCCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinVcn,
      SMU10_UMD_PSTATE_VCE);

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxGfxClk,
      SMU10_UMD_PSTATE_GFXCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxFclkByFreq,
      SMU10_UMD_PSTATE_FCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxSocclkByFreq,
      SMU10_UMD_PSTATE_SOCCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxVcn,
      SMU10_UMD_PSTATE_VCE);
  break;
 case 136:
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinGfxClk,
      min_sclk);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinFclkByFreq,
      hwmgr->display_config->num_display > 3 ?
      SMU10_UMD_PSTATE_PEAK_FCLK :
      min_mclk);

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinSocclkByFreq,
      SMU10_UMD_PSTATE_MIN_SOCCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinVcn,
      SMU10_UMD_PSTATE_MIN_VCE);

  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxGfxClk,
      data->gfx_max_freq_limit/100);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxFclkByFreq,
      SMU10_UMD_PSTATE_PEAK_FCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxSocclkByFreq,
      SMU10_UMD_PSTATE_PEAK_SOCCLK);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxVcn,
      SMU10_UMD_PSTATE_VCE);
  break;
 case 134:
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinGfxClk,
      data->gfx_min_freq_limit/100);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxGfxClk,
      data->gfx_min_freq_limit/100);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetHardMinFclkByFreq,
      min_mclk);
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SetSoftMaxFclkByFreq,
      min_mclk);
  break;
 case 133:
 case 132:
 default:
  break;
 }
 return 0;
}
