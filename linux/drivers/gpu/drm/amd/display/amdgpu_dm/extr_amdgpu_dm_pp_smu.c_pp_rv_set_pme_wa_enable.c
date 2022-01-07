
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pp_smu {struct dc_context* dm; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct TYPE_4__ {scalar_t__ funcs; } ;
struct TYPE_3__ {struct amd_pm_funcs* pp_funcs; void* pp_handle; } ;
struct amdgpu_device {TYPE_2__ smu; TYPE_1__ powerplay; } ;
struct amd_pm_funcs {int (* notify_smu_enable_pwe ) (void*) ;} ;


 int smu_notify_smu_enable_pwe (TYPE_2__*) ;
 int stub1 (void*) ;

void pp_rv_set_pme_wa_enable(struct pp_smu *pp)
{
 const struct dc_context *ctx = pp->dm;
 struct amdgpu_device *adev = ctx->driver_context;
 void *pp_handle = adev->powerplay.pp_handle;
 const struct amd_pm_funcs *pp_funcs = adev->powerplay.pp_funcs;

 if (pp_funcs && pp_funcs->notify_smu_enable_pwe)
  pp_funcs->notify_smu_enable_pwe(pp_handle);
 else if (adev->smu.funcs)
  smu_notify_smu_enable_pwe(&adev->smu);
}
