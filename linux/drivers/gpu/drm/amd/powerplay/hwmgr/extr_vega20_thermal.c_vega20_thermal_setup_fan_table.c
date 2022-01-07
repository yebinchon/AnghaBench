
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ FanTargetTemperature; } ;
struct TYPE_3__ {TYPE_2__ pp_table; } ;
struct vega20_hwmgr {TYPE_1__ smc_state_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
typedef TYPE_2__ PPTable_t ;


 int PPSMC_MSG_SetFanTemperatureTarget ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int vega20_thermal_setup_fan_table(struct pp_hwmgr *hwmgr)
{
 int ret;
 struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);
 PPTable_t *table = &(data->smc_state_table.pp_table);

 ret = smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetFanTemperatureTarget,
    (uint32_t)table->FanTargetTemperature);

 return ret;
}
