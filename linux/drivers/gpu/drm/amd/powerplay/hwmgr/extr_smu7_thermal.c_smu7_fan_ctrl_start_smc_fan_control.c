
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ucTargetTemperature; int usMaxFanPWM; int usMaxFanRPM; } ;
struct TYPE_6__ {TYPE_2__ advanceFanControlParameters; } ;
struct pp_hwmgr {int fan_ctrl_enabled; TYPE_3__ thermal_controller; int device; TYPE_1__* hwmgr_func; } ;
struct TYPE_4__ {int (* set_max_fan_pwm_output ) (struct pp_hwmgr*,int ) ;int (* set_max_fan_rpm_output ) (struct pp_hwmgr*,int ) ;} ;


 int FAN_CONTROL_FUZZY ;
 int FAN_CONTROL_TABLE ;
 int PHM_PlatformCaps_FanSpeedInTableIsRPM ;
 int PHM_PlatformCaps_ODFuzzyFanControlSupport ;
 int PPSMC_MSG_SetFanTemperatureTarget ;
 int PPSMC_StartFanControl ;
 scalar_t__ PP_CAP (int ) ;
 int cgs_write_register (int ,int ,int ) ;
 int mmSMC_MSG_ARG_0 ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,scalar_t__) ;
 int stub1 (struct pp_hwmgr*,int ) ;
 int stub2 (struct pp_hwmgr*,int ) ;

int smu7_fan_ctrl_start_smc_fan_control(struct pp_hwmgr *hwmgr)
{
 int result;

 if (PP_CAP(PHM_PlatformCaps_ODFuzzyFanControlSupport)) {
  cgs_write_register(hwmgr->device, mmSMC_MSG_ARG_0, FAN_CONTROL_FUZZY);
  result = smum_send_msg_to_smc(hwmgr, PPSMC_StartFanControl);

  if (PP_CAP(PHM_PlatformCaps_FanSpeedInTableIsRPM))
   hwmgr->hwmgr_func->set_max_fan_rpm_output(hwmgr,
     hwmgr->thermal_controller.
     advanceFanControlParameters.usMaxFanRPM);
  else
   hwmgr->hwmgr_func->set_max_fan_pwm_output(hwmgr,
     hwmgr->thermal_controller.
     advanceFanControlParameters.usMaxFanPWM);

 } else {
  cgs_write_register(hwmgr->device, mmSMC_MSG_ARG_0, FAN_CONTROL_TABLE);
  result = smum_send_msg_to_smc(hwmgr, PPSMC_StartFanControl);
 }

 if (!result && hwmgr->thermal_controller.
   advanceFanControlParameters.ucTargetTemperature)
  result = smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetFanTemperatureTarget,
    hwmgr->thermal_controller.
    advanceFanControlParameters.ucTargetTemperature);
 hwmgr->fan_ctrl_enabled = 1;

 return result;
}
