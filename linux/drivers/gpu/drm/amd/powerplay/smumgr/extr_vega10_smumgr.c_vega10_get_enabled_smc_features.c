
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pp_hwmgr {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_GetEnabledSmuFeatures ;
 int smu9_get_argument (struct pp_hwmgr*) ;
 int smu9_send_msg_to_smc (struct pp_hwmgr*,int ) ;

int vega10_get_enabled_smc_features(struct pp_hwmgr *hwmgr,
       uint64_t *features_enabled)
{
 if (features_enabled == ((void*)0))
  return -EINVAL;

 smu9_send_msg_to_smc(hwmgr, PPSMC_MSG_GetEnabledSmuFeatures);
 *features_enabled = smu9_get_argument(hwmgr);

 return 0;
}
