
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int dpm_flags; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int DPMFlags_SCLK_Enabled ;
 int PPSMC_MSG_EnableAllSmuFeatures ;
 int SCLK_DPM_MASK ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_start_dpm(struct pp_hwmgr *hwmgr)
{
 struct smu8_hwmgr *data = hwmgr->backend;

 data->dpm_flags |= DPMFlags_SCLK_Enabled;

 return smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_EnableAllSmuFeatures,
    SCLK_DPM_MASK);
}
