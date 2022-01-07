
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_hwmgr {scalar_t__ is_nb_dpm_enabled; } ;
struct pp_hwmgr {struct smu8_hwmgr* backend; } ;


 int PPSMC_MSG_DisableLowMemoryPstate ;
 int PPSMC_MSG_EnableLowMemoryPstate ;
 int PP_DBG_LOG (char*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu8_nbdpm_pstate_enable_disable(struct pp_hwmgr *hwmgr, bool enable, bool lock)
{
 struct smu8_hwmgr *hw_data = hwmgr->backend;

 if (hw_data->is_nb_dpm_enabled) {
  if (enable) {
   PP_DBG_LOG("enable Low Memory PState.\n");

   return smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_EnableLowMemoryPstate,
      (lock ? 1 : 0));
  } else {
   PP_DBG_LOG("disable Low Memory PState.\n");

   return smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_DisableLowMemoryPstate,
      (lock ? 1 : 0));
  }
 }

 return 0;
}
