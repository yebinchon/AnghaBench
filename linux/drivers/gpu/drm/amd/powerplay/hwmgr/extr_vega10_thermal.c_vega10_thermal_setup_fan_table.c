
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
typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_10__ {int FanPwmMin; int FanStartTemp; int FanStopTemp; int FanZeroRpmEnable; int FanGainHbm; int FanGainPlx; int FanGainVrMvdd; int FanGainVrVddc; int FanGainLiquid; int FanGainHotspot; int FanGainEdge; void* FanTargetGfxclk; scalar_t__ FanTargetTemperature; void* FanAcousticLimitRpm; int FanThrottlingRpm; void* FanMaximumRpm; } ;
struct TYPE_9__ {TYPE_5__ pp_table; } ;
struct vega10_hwmgr {TYPE_4__ smc_state_table; TYPE_1__* smu_features; } ;
struct TYPE_7__ {int usPWMMin; int usZeroRPMStartTemperature; int usZeroRPMStopTemperature; int ucEnableZeroRPM; int usFanGainHbm; int usFanGainPlx; int usFanGainVrMvdd; int usFanGainVrVddc; int usFanGainLiquid; int usFanGainHotspot; int usFanGainEdge; scalar_t__ ulTargetGfxClk; scalar_t__ usTMax; scalar_t__ ulMinFanSCLKAcousticLimit; int usFanRPMMaxLimit; scalar_t__ usMaxFanRPM; } ;
struct TYPE_8__ {TYPE_2__ advanceFanControlParameters; } ;
struct pp_hwmgr {TYPE_3__ thermal_controller; struct vega10_hwmgr* backend; } ;
struct TYPE_6__ {int supported; } ;
typedef TYPE_5__ PPTable_t ;


 size_t GNLD_FAN_CONTROL ;
 int PPSMC_MSG_SetFanTemperatureTarget ;
 int PPTABLE ;
 int pr_info (char*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 int smum_smc_table_manager (struct pp_hwmgr*,int *,int ,int) ;

int vega10_thermal_setup_fan_table(struct pp_hwmgr *hwmgr)
{
 int ret;
 struct vega10_hwmgr *data = hwmgr->backend;
 PPTable_t *table = &(data->smc_state_table.pp_table);

 if (!data->smu_features[GNLD_FAN_CONTROL].supported)
  return 0;

 table->FanMaximumRpm = (uint16_t)hwmgr->thermal_controller.
   advanceFanControlParameters.usMaxFanRPM;
 table->FanThrottlingRpm = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanRPMMaxLimit;
 table->FanAcousticLimitRpm = (uint16_t)(hwmgr->thermal_controller.
   advanceFanControlParameters.ulMinFanSCLKAcousticLimit);
 table->FanTargetTemperature = hwmgr->thermal_controller.
   advanceFanControlParameters.usTMax;

 smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetFanTemperatureTarget,
    (uint32_t)table->FanTargetTemperature);

 table->FanPwmMin = hwmgr->thermal_controller.
   advanceFanControlParameters.usPWMMin * 255 / 100;
 table->FanTargetGfxclk = (uint16_t)(hwmgr->thermal_controller.
   advanceFanControlParameters.ulTargetGfxClk);
 table->FanGainEdge = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanGainEdge;
 table->FanGainHotspot = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanGainHotspot;
 table->FanGainLiquid = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanGainLiquid;
 table->FanGainVrVddc = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanGainVrVddc;
 table->FanGainVrMvdd = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanGainVrMvdd;
 table->FanGainPlx = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanGainPlx;
 table->FanGainHbm = hwmgr->thermal_controller.
   advanceFanControlParameters.usFanGainHbm;
 table->FanZeroRpmEnable = hwmgr->thermal_controller.
   advanceFanControlParameters.ucEnableZeroRPM;
 table->FanStopTemp = hwmgr->thermal_controller.
   advanceFanControlParameters.usZeroRPMStopTemperature;
 table->FanStartTemp = hwmgr->thermal_controller.
   advanceFanControlParameters.usZeroRPMStartTemperature;

 ret = smum_smc_table_manager(hwmgr,
    (uint8_t *)(&(data->smc_state_table.pp_table)),
    PPTABLE, 0);
 if (ret)
  pr_info("Failed to update Fan Control Table in PPTable!");

 return ret;
}
