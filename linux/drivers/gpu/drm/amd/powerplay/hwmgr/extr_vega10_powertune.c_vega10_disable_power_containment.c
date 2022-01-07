
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega10_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_2__ {int supported; int smu_feature_bitmap; } ;


 size_t GNLD_PPT ;
 size_t GNLD_TDC ;
 int PHM_PlatformCaps_PowerContainment ;
 int PP_ASSERT_WITH_CODE (int,char*,int) ;
 scalar_t__ PP_CAP (int ) ;
 int vega10_enable_smc_features (struct pp_hwmgr*,int,int ) ;

int vega10_disable_power_containment(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;

 if (PP_CAP(PHM_PlatformCaps_PowerContainment)) {
  if (data->smu_features[GNLD_PPT].supported)
   PP_ASSERT_WITH_CODE(!vega10_enable_smc_features(hwmgr,
     0, data->smu_features[GNLD_PPT].smu_feature_bitmap),
     "Attempt to disable PPT feature Failed!",
     data->smu_features[GNLD_PPT].supported = 0);

  if (data->smu_features[GNLD_TDC].supported)
   PP_ASSERT_WITH_CODE(!vega10_enable_smc_features(hwmgr,
     0, data->smu_features[GNLD_TDC].smu_feature_bitmap),
     "Attempt to disable PPT feature Failed!",
     data->smu_features[GNLD_TDC].supported = 0);
 }

 return 0;
}
