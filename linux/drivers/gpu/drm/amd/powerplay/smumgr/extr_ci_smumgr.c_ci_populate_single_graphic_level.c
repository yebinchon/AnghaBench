
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int sclk_down_hyst; int sclk_up_hyst; int sclk_activity; } ;
struct smu7_hwmgr {TYPE_2__ current_profile_setting; scalar_t__ vddc_phase_shed_control; } ;
struct TYPE_6__ {int platformCaps; } ;
struct TYPE_4__ {int vddc_phase_shed_limits_table; int vddc_dependency_on_sclk; } ;
struct pp_hwmgr {TYPE_3__ platform_descriptor; TYPE_1__ dyn_state; scalar_t__ backend; } ;
struct SMU7_Discrete_GraphicsLevel {int MinVddc; int SclkFrequency; int MinVddcPhases; int CcPwrDynRm; int CcPwrDynRm1; int EnabledForThrottle; int CgSpllFuncCntl3; int CgSpllFuncCntl4; int SpllSpreadSpectrum; int SpllSpreadSpectrum2; int ActivityLevel; int DisplayWatermark; int DeepSleepDivId; scalar_t__ PowerThrottle; scalar_t__ VoltageDownH; int DownH; int UpH; scalar_t__ EnabledForActivity; } ;


 int CISLAND_MINIMUM_ENGINE_CLOCK ;
 int CONVERT_FROM_HOST_TO_SMC_UL (int) ;
 int CONVERT_FROM_HOST_TO_SMC_US (int ) ;
 int PHM_PlatformCaps_SclkDeepSleep ;
 int PPSMC_DISPLAY_WATERMARK_LOW ;
 int PP_HOST_TO_SMC_UL (int) ;
 int VOLTAGE_SCALE ;
 int ci_calculate_sclk_params (struct pp_hwmgr*,int,struct SMU7_Discrete_GraphicsLevel*) ;
 int ci_get_dependency_volt_by_clk (struct pp_hwmgr*,int ,int,int*) ;
 int ci_get_sleep_divider_id_from_clock (int,int ) ;
 int ci_populate_phase_value_based_on_sclk (struct pp_hwmgr*,int ,int,int*) ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int ci_populate_single_graphic_level(struct pp_hwmgr *hwmgr,
  uint32_t clock, struct SMU7_Discrete_GraphicsLevel *level)
{
 int result;
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);


 result = ci_calculate_sclk_params(hwmgr, clock, level);


 result = ci_get_dependency_volt_by_clk(hwmgr,
   hwmgr->dyn_state.vddc_dependency_on_sclk, clock,
   (uint32_t *)(&level->MinVddc));
 if (result) {
  pr_err("vdd_dep_on_sclk table is NULL\n");
  return result;
 }

 level->SclkFrequency = clock;
 level->MinVddcPhases = 1;

 if (data->vddc_phase_shed_control)
  ci_populate_phase_value_based_on_sclk(hwmgr,
    hwmgr->dyn_state.vddc_phase_shed_limits_table,
    clock,
    &level->MinVddcPhases);

 level->ActivityLevel = data->current_profile_setting.sclk_activity;
 level->CcPwrDynRm = 0;
 level->CcPwrDynRm1 = 0;
 level->EnabledForActivity = 0;

 level->EnabledForThrottle = 1;
 level->UpH = data->current_profile_setting.sclk_up_hyst;
 level->DownH = data->current_profile_setting.sclk_down_hyst;
 level->VoltageDownH = 0;
 level->PowerThrottle = 0;


 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_SclkDeepSleep))
  level->DeepSleepDivId =
    ci_get_sleep_divider_id_from_clock(clock,
      CISLAND_MINIMUM_ENGINE_CLOCK);


 level->DisplayWatermark = PPSMC_DISPLAY_WATERMARK_LOW;

 if (0 == result) {
  level->MinVddc = PP_HOST_TO_SMC_UL(level->MinVddc * VOLTAGE_SCALE);
  CONVERT_FROM_HOST_TO_SMC_UL(level->MinVddcPhases);
  CONVERT_FROM_HOST_TO_SMC_UL(level->SclkFrequency);
  CONVERT_FROM_HOST_TO_SMC_US(level->ActivityLevel);
  CONVERT_FROM_HOST_TO_SMC_UL(level->CgSpllFuncCntl3);
  CONVERT_FROM_HOST_TO_SMC_UL(level->CgSpllFuncCntl4);
  CONVERT_FROM_HOST_TO_SMC_UL(level->SpllSpreadSpectrum);
  CONVERT_FROM_HOST_TO_SMC_UL(level->SpllSpreadSpectrum2);
  CONVERT_FROM_HOST_TO_SMC_UL(level->CcPwrDynRm);
  CONVERT_FROM_HOST_TO_SMC_UL(level->CcPwrDynRm1);
 }

 return result;
}
