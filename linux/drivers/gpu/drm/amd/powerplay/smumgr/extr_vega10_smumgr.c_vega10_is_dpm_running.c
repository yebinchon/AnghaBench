
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pp_hwmgr {int dummy; } ;


 int SMC_DPM_FEATURES ;
 int vega10_get_enabled_smc_features (struct pp_hwmgr*,int*) ;

__attribute__((used)) static bool vega10_is_dpm_running(struct pp_hwmgr *hwmgr)
{
 uint64_t features_enabled = 0;

 vega10_get_enabled_smc_features(hwmgr, &features_enabled);

 if (features_enabled & SMC_DPM_FEATURES)
  return 1;
 else
  return 0;
}
