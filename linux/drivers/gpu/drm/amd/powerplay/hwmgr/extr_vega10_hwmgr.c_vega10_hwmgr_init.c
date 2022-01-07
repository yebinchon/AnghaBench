
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int * pptable_func; int * hwmgr_func; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ amdgpu_passthrough (struct amdgpu_device*) ;
 int vega10_baco_set_cap (struct pp_hwmgr*) ;
 int vega10_hwmgr_funcs ;
 int vega10_pptable_funcs ;

int vega10_hwmgr_init(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = hwmgr->adev;

 hwmgr->hwmgr_func = &vega10_hwmgr_funcs;
 hwmgr->pptable_func = &vega10_pptable_funcs;
 if (amdgpu_passthrough(adev))
  return vega10_baco_set_cap(hwmgr);

 return 0;
}
