
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_DisableSmuFeatures ;
 int PPSMC_MSG_EnableSmuFeatures ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int,int ) ;

int vega10_enable_smc_features(struct pp_hwmgr *hwmgr,
          bool enable, uint32_t feature_mask)
{
 int msg = enable ? PPSMC_MSG_EnableSmuFeatures :
   PPSMC_MSG_DisableSmuFeatures;

 return smum_send_msg_to_smc_with_parameter(hwmgr,
   msg, feature_mask);
}
