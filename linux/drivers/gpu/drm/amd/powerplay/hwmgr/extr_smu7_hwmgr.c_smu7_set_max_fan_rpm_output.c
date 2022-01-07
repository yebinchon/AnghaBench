
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int usMaxFanRPM; } ;
struct TYPE_4__ {TYPE_1__ advanceFanControlParameters; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; } ;


 int PPSMC_MSG_SetFanRpmMax ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu7_set_max_fan_rpm_output(struct pp_hwmgr *hwmgr, uint16_t us_max_fan_rpm)
{
 hwmgr->thermal_controller.
 advanceFanControlParameters.usMaxFanRPM = us_max_fan_rpm;

 return smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_SetFanRpmMax, us_max_fan_rpm);
}
