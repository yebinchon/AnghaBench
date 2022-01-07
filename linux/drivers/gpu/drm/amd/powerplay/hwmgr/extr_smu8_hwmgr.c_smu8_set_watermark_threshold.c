
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int soft_max_clk; } ;
struct smu8_hwmgr {TYPE_1__ sclk_dpm; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int PPSMC_MSG_SetWatermarkFrequency ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_set_watermark_threshold(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data =
      hwmgr->backend;

 smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SetWatermarkFrequency,
     data->sclk_dpm.soft_max_clk);

 return 0;
}
