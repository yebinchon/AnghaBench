
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_GetFeatureStatus ;
 int smu8_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 unsigned long smum_get_argument (struct pp_hwmgr*) ;

__attribute__((used)) static bool smu8_dpm_check_smu_features(struct pp_hwmgr *hwmgr,
    unsigned long check_feature)
{
 int result;
 unsigned long features;

 result = smu8_send_msg_to_smc_with_parameter(hwmgr, PPSMC_MSG_GetFeatureStatus, 0);
 if (result == 0) {
  features = smum_get_argument(hwmgr);
  if (features & check_feature)
   return 1;
 }

 return 0;
}
