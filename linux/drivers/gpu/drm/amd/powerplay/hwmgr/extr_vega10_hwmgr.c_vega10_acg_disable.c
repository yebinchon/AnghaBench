
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega10_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_2__ {int enabled; int smu_feature_bitmap; scalar_t__ supported; } ;


 size_t GNLD_ACG ;
 int vega10_enable_smc_features (struct pp_hwmgr*,int,int ) ;

__attribute__((used)) static int vega10_acg_disable(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;

 if (data->smu_features[GNLD_ACG].supported &&
     data->smu_features[GNLD_ACG].enabled)
  if (!vega10_enable_smc_features(hwmgr, 0,
   data->smu_features[GNLD_ACG].smu_feature_bitmap))
   data->smu_features[GNLD_ACG].enabled = 0;

 return 0;
}
