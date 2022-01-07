
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {scalar_t__ apply_avfs_cks_off_voltage; int avfs_vdroop_override_setting; } ;
struct pp_hwmgr {int avfs_supported; scalar_t__ backend; } ;


 int PPSMC_MSG_ApplyAvfsCksOffVoltage ;
 int PPSMC_MSG_EnableAvfs ;
 int PPSMC_MSG_SetGBDroopSettings ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

int polaris10_thermal_avfs_enable(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (!hwmgr->avfs_supported)
  return 0;

 smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_SetGBDroopSettings, data->avfs_vdroop_override_setting);

 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_EnableAvfs);




 if (data->apply_avfs_cks_off_voltage)
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ApplyAvfsCksOffVoltage);

 return 0;
}
