
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega10_hwmgr {int uvd_power_gated; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;


 int vega10_enable_disable_uvd_dpm (struct pp_hwmgr*,int) ;

__attribute__((used)) static void vega10_power_gate_uvd(struct pp_hwmgr *hwmgr, bool bgate)
{
 struct vega10_hwmgr *data = hwmgr->backend;

 data->uvd_power_gated = bgate;
 vega10_enable_disable_uvd_dpm(hwmgr, !bgate);
}
