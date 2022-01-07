
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega12_hwmgr {int vce_power_gated; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int vega12_enable_disable_vce_dpm (struct pp_hwmgr*,int) ;

__attribute__((used)) static void vega12_power_gate_vce(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct vega12_hwmgr *data = (struct vega12_hwmgr *)(hwmgr->backend);

 if (data->vce_power_gated == bgate)
  return;

 data->vce_power_gated = bgate;
 vega12_enable_disable_vce_dpm(hwmgr, !bgate);
}
