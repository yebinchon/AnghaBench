
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {scalar_t__ apply_avfs_cks_off_voltage; } ;
struct pp_hwmgr {int avfs_supported; scalar_t__ backend; } ;


 int PPSMC_MSG_ApplyAvfsCksOffVoltage ;
 int PPSMC_MSG_EnableAvfs ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

int vegam_thermal_avfs_enable(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 int ret;

 if (!hwmgr->avfs_supported)
  return 0;

 ret = smum_send_msg_to_smc(hwmgr, PPSMC_MSG_EnableAvfs);
 if (!ret) {
  if (data->apply_avfs_cks_off_voltage)
   ret = smum_send_msg_to_smc(hwmgr, PPSMC_MSG_ApplyAvfsCksOffVoltage);
 }

 return ret;
}
