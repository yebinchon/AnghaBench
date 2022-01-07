
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega20_hwmgr {int uvd_power_gated; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int vega20_enable_disable_uvd_dpm (struct pp_hwmgr*,int) ;

__attribute__((used)) static void vega20_power_gate_uvd(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);

 if (data->uvd_power_gated == bgate)
  return ;

 data->uvd_power_gated = bgate;
 vega20_enable_disable_uvd_dpm(hwmgr, !bgate);
}
