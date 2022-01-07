
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int dpm_flags; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int DPMFlags_SCLK_Enabled ;
 int PPSMC_MSG_DisableAllSmuFeatures ;
 unsigned long SCLK_DPM_MASK ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,unsigned long) ;

__attribute__((used)) static int smu8_stop_dpm(struct pp_hwmgr *hwmgr)
{
 int ret = 0;
 struct smu8_hwmgr *data = hwmgr->backend;
 unsigned long dpm_features = 0;

 if (data->dpm_flags & DPMFlags_SCLK_Enabled) {
  dpm_features |= SCLK_DPM_MASK;
  data->dpm_flags &= ~DPMFlags_SCLK_Enabled;
  ret = smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_DisableAllSmuFeatures,
     dpm_features);
 }
 return ret;
}
