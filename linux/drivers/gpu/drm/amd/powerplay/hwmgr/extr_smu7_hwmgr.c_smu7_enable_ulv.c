
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {scalar_t__ ulv_supported; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_EnableULV ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_enable_ulv(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (data->ulv_supported)
  return smum_send_msg_to_smc(hwmgr, PPSMC_MSG_EnableULV);

 return 0;
}
