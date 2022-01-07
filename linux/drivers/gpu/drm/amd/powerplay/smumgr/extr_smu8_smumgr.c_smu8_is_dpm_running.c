
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int SMU_EnabledFeatureScoreboard_SclkDpmOn ;
 scalar_t__ smu8_dpm_check_smu_features (struct pp_hwmgr*,int ) ;

__attribute__((used)) static bool smu8_is_dpm_running(struct pp_hwmgr *hwmgr)
{
 if (smu8_dpm_check_smu_features(hwmgr, SMU_EnabledFeatureScoreboard_SclkDpmOn))
  return 1;
 return 0;
}
