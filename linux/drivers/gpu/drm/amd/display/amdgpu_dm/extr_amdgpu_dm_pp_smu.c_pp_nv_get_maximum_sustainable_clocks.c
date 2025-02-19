
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_context {TYPE_1__* funcs; } ;
struct pp_smu_nv_clock_table {int dummy; } ;
struct pp_smu {struct dc_context* dm; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct amdgpu_device {struct smu_context smu; } ;
typedef enum pp_smu_status { ____Placeholder_pp_smu_status } pp_smu_status ;
struct TYPE_2__ {int (* get_max_sustainable_clocks_by_dc ) (struct smu_context*,struct pp_smu_nv_clock_table*) ;} ;


 int PP_SMU_RESULT_FAIL ;
 int PP_SMU_RESULT_OK ;
 int PP_SMU_RESULT_UNSUPPORTED ;
 int stub1 (struct smu_context*,struct pp_smu_nv_clock_table*) ;

enum pp_smu_status pp_nv_get_maximum_sustainable_clocks(
  struct pp_smu *pp, struct pp_smu_nv_clock_table *max_clocks)
{
 const struct dc_context *ctx = pp->dm;
 struct amdgpu_device *adev = ctx->driver_context;
 struct smu_context *smu = &adev->smu;

 if (!smu->funcs)
  return PP_SMU_RESULT_UNSUPPORTED;

 if (!smu->funcs->get_max_sustainable_clocks_by_dc)
  return PP_SMU_RESULT_UNSUPPORTED;

 if (!smu->funcs->get_max_sustainable_clocks_by_dc(smu, max_clocks))
  return PP_SMU_RESULT_OK;

 return PP_SMU_RESULT_FAIL;
}
