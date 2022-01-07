
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int avfs_supported; } ;


 int PPSMC_MSG_EnableAvfs ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int fiji_thermal_avfs_enable(struct pp_hwmgr *hwmgr)
{
 if (!hwmgr->avfs_supported)
  return 0;

 smum_send_msg_to_smc(hwmgr, PPSMC_MSG_EnableAvfs);

 return 0;
}
