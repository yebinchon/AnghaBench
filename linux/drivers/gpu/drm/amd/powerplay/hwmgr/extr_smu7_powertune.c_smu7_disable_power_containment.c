
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smu7_hwmgr {int power_containment_features; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PHM_PlatformCaps_PowerContainment ;
 int POWERCONTAINMENT_FEATURE_DTE ;
 int POWERCONTAINMENT_FEATURE_PkgPwrLimit ;
 int POWERCONTAINMENT_FEATURE_TDCLimit ;
 scalar_t__ PPSMC_MSG_DisableDTE ;
 scalar_t__ PPSMC_MSG_PkgPwrLimitDisable ;
 scalar_t__ PPSMC_MSG_TDCLimitDisable ;
 int PP_ASSERT_WITH_CODE (int,char*,int) ;
 scalar_t__ PP_CAP (int ) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

int smu7_disable_power_containment(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 int result = 0;

 if (PP_CAP(PHM_PlatformCaps_PowerContainment) &&
     data->power_containment_features) {
  int smc_result;

  if (data->power_containment_features &
    POWERCONTAINMENT_FEATURE_TDCLimit) {
   smc_result = smum_send_msg_to_smc(hwmgr,
     (uint16_t)(PPSMC_MSG_TDCLimitDisable));
   PP_ASSERT_WITH_CODE((smc_result == 0),
     "Failed to disable TDCLimit in SMC.",
     result = smc_result);
  }

  if (data->power_containment_features &
    POWERCONTAINMENT_FEATURE_DTE) {
   smc_result = smum_send_msg_to_smc(hwmgr,
     (uint16_t)(PPSMC_MSG_DisableDTE));
   PP_ASSERT_WITH_CODE((smc_result == 0),
     "Failed to disable DTE in SMC.",
     result = smc_result);
  }

  if (data->power_containment_features &
    POWERCONTAINMENT_FEATURE_PkgPwrLimit) {
   smc_result = smum_send_msg_to_smc(hwmgr,
     (uint16_t)(PPSMC_MSG_PkgPwrLimitDisable));
   PP_ASSERT_WITH_CODE((smc_result == 0),
     "Failed to disable PkgPwrTracking in SMC.",
     result = smc_result);
  }
  data->power_containment_features = 0;
 }

 return result;
}
