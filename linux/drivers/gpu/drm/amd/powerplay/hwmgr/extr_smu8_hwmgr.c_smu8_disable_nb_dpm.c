
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {int is_nb_dpm_enabled; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 unsigned long NB_DPM_MASK ;
 int PPSMC_MSG_DisableAllSmuFeatures ;
 int smu8_nbdpm_pstate_enable_disable (struct pp_hwmgr*,int,int) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,unsigned long) ;

__attribute__((used)) static int smu8_disable_nb_dpm(struct pp_hwmgr *hwmgr)
{
 int ret = 0;

 struct smu8_hwmgr *data = hwmgr->backend;
 unsigned long dpm_features = 0;

 if (data->is_nb_dpm_enabled) {
  smu8_nbdpm_pstate_enable_disable(hwmgr, 1, 1);
  dpm_features |= NB_DPM_MASK;
  ret = smum_send_msg_to_smc_with_parameter(
         hwmgr,
         PPSMC_MSG_DisableAllSmuFeatures,
         dpm_features);
  if (ret == 0)
   data->is_nb_dpm_enabled = 0;
 }

 return ret;
}
