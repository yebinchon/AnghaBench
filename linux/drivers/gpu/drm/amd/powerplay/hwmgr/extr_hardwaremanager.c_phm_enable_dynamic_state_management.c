
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* hwmgr_func; struct amdgpu_device* adev; } ;
struct amdgpu_device {scalar_t__ in_suspend; } ;
struct TYPE_2__ {int (* dynamic_state_management_enable ) (struct pp_hwmgr*) ;} ;


 int EINVAL ;
 int PHM_FUNC_CHECK (struct pp_hwmgr*) ;
 int amdgpu_passthrough (struct amdgpu_device*) ;
 int pr_info (char*) ;
 scalar_t__ smum_is_dpm_running (struct pp_hwmgr*) ;
 int stub1 (struct pp_hwmgr*) ;

int phm_enable_dynamic_state_management(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_device *adev = ((void*)0);
 int ret = -EINVAL;
 PHM_FUNC_CHECK(hwmgr);
 adev = hwmgr->adev;


 if (smum_is_dpm_running(hwmgr) && !amdgpu_passthrough(adev)
  && adev->in_suspend) {
  pr_info("dpm has been enabled\n");
  return 0;
 }

 if (((void*)0) != hwmgr->hwmgr_func->dynamic_state_management_enable)
  ret = hwmgr->hwmgr_func->dynamic_state_management_enable(hwmgr);

 return ret;
}
