
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smu7_hwmgr {int cac_enabled; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PHM_PlatformCaps_CAC ;
 scalar_t__ PPSMC_MSG_EnableCac ;
 int PP_ASSERT_WITH_CODE (int,char*,int) ;
 scalar_t__ PP_CAP (int ) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

int smu7_enable_smc_cac(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 int result = 0;

 if (PP_CAP(PHM_PlatformCaps_CAC)) {
  int smc_result;
  smc_result = smum_send_msg_to_smc(hwmgr,
    (uint16_t)(PPSMC_MSG_EnableCac));
  PP_ASSERT_WITH_CODE((0 == smc_result),
    "Failed to enable CAC in SMC.", result = -1);

  data->cac_enabled = (0 == smc_result) ? 1 : 0;
 }
 return result;
}
