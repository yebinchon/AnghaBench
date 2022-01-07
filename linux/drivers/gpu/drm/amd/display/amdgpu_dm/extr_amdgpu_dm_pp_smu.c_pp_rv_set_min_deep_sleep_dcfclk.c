
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_smu {struct dc_context* dm; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct TYPE_2__ {struct amd_pm_funcs* pp_funcs; void* pp_handle; } ;
struct amdgpu_device {TYPE_1__ powerplay; } ;
struct amd_pm_funcs {int (* set_min_deep_sleep_dcefclk ) (void*,int) ;} ;


 int stub1 (void*,int) ;

void pp_rv_set_min_deep_sleep_dcfclk(struct pp_smu *pp, int clock)
{
 const struct dc_context *ctx = pp->dm;
 struct amdgpu_device *adev = ctx->driver_context;
 void *pp_handle = adev->powerplay.pp_handle;
 const struct amd_pm_funcs *pp_funcs = adev->powerplay.pp_funcs;

 if (!pp_funcs || !pp_funcs->set_min_deep_sleep_dcefclk)
  return;

 pp_funcs->set_min_deep_sleep_dcefclk(pp_handle, clock);
}
