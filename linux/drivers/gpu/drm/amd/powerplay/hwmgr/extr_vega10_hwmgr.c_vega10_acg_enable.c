
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vega10_hwmgr {int acg_loop_state; TYPE_1__* smu_features; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_2__ {int enabled; int smu_feature_bitmap; scalar_t__ supported; } ;


 size_t GNLD_ACG ;
 size_t GNLD_DPM_PREFETCHER ;
 int PPSMC_MSG_InitializeAcg ;
 int PPSMC_MSG_RunAcgBtc ;
 int PPSMC_MSG_RunAcgInClosedLoop ;
 int PPSMC_MSG_RunAcgInOpenLoop ;
 int pr_info (char*) ;
 int smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 scalar_t__ vega10_enable_smc_features (struct pp_hwmgr*,int,int ) ;

__attribute__((used)) static int vega10_acg_enable(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;
 uint32_t agc_btc_response;

 if (data->smu_features[GNLD_ACG].supported) {
  if (0 == vega10_enable_smc_features(hwmgr, 1,
     data->smu_features[GNLD_DPM_PREFETCHER].smu_feature_bitmap))
   data->smu_features[GNLD_DPM_PREFETCHER].enabled = 1;

  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_InitializeAcg);

  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_RunAcgBtc);
  agc_btc_response = smum_get_argument(hwmgr);

  if (1 == agc_btc_response) {
   if (1 == data->acg_loop_state)
    smum_send_msg_to_smc(hwmgr, PPSMC_MSG_RunAcgInClosedLoop);
   else if (2 == data->acg_loop_state)
    smum_send_msg_to_smc(hwmgr, PPSMC_MSG_RunAcgInOpenLoop);
   if (0 == vega10_enable_smc_features(hwmgr, 1,
    data->smu_features[GNLD_ACG].smu_feature_bitmap))
     data->smu_features[GNLD_ACG].enabled = 1;
  } else {
   pr_info("[ACG_Enable] ACG BTC Returned Failed Status!\n");
   data->smu_features[GNLD_ACG].enabled = 0;
  }
 }

 return 0;
}
