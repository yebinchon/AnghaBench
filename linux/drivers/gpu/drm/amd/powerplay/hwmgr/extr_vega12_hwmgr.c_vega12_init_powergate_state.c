
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega12_hwmgr {int uvd_power_gated; int vce_power_gated; TYPE_1__* smu_features; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 size_t GNLD_DPM_UVD ;
 size_t GNLD_DPM_VCE ;

__attribute__((used)) static void vega12_init_powergate_state(struct pp_hwmgr *hwmgr)
{
 struct vega12_hwmgr *data =
   (struct vega12_hwmgr *)(hwmgr->backend);

 data->uvd_power_gated = 1;
 data->vce_power_gated = 1;

 if (data->smu_features[GNLD_DPM_UVD].enabled)
  data->uvd_power_gated = 0;

 if (data->smu_features[GNLD_DPM_VCE].enabled)
  data->vce_power_gated = 0;
}
