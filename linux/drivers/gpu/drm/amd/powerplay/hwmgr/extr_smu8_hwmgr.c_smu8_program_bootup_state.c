
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int soft_max_clk; int soft_min_clk; } ;
struct TYPE_4__ {int bootup_engine_clock; } ;
struct smu8_hwmgr {TYPE_1__ sclk_dpm; TYPE_2__ sys_info; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int PPSMC_MSG_SetSclkSoftMax ;
 int PPSMC_MSG_SetSclkSoftMin ;
 int smu8_get_sclk_level (struct pp_hwmgr*,int ,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_program_bootup_state(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 data->sclk_dpm.soft_min_clk = data->sys_info.bootup_engine_clock;
 data->sclk_dpm.soft_max_clk = data->sys_info.bootup_engine_clock;

 smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetSclkSoftMin,
    smu8_get_sclk_level(hwmgr,
    data->sclk_dpm.soft_min_clk,
    PPSMC_MSG_SetSclkSoftMin));

 smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_SetSclkSoftMax,
    smu8_get_sclk_level(hwmgr,
    data->sclk_dpm.soft_max_clk,
    PPSMC_MSG_SetSclkSoftMax));

 return 0;
}
