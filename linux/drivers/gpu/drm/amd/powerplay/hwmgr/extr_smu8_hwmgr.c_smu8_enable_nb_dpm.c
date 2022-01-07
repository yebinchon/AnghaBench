
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int is_nb_dpm_enabled; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 unsigned long NB_DPM_MASK ;
 int PPSMC_MSG_EnableAllSmuFeatures ;
 int PP_DBG_LOG (char*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,unsigned long) ;

__attribute__((used)) static int smu8_enable_nb_dpm(struct pp_hwmgr *hwmgr)
{
 int ret = 0;

 struct smu8_hwmgr *data = hwmgr->backend;
 unsigned long dpm_features = 0;

 if (!data->is_nb_dpm_enabled) {
  PP_DBG_LOG("enabling ALL SMU features.\n");
  dpm_features |= NB_DPM_MASK;
  ret = smum_send_msg_to_smc_with_parameter(
         hwmgr,
         PPSMC_MSG_EnableAllSmuFeatures,
         dpm_features);
  if (ret == 0)
   data->is_nb_dpm_enabled = 1;
 }

 return ret;
}
