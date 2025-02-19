
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int funcs; } ;
struct pp_smu {struct dc_context* dm; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct amdgpu_device {struct smu_context smu; } ;
typedef enum pp_smu_status { ____Placeholder_pp_smu_status } pp_smu_status ;


 int PP_SMU_RESULT_FAIL ;
 int PP_SMU_RESULT_OK ;
 int PP_SMU_RESULT_UNSUPPORTED ;
 scalar_t__ smu_set_azalia_d3_pme (struct smu_context*) ;

enum pp_smu_status pp_nv_set_pme_wa_enable(struct pp_smu *pp)
{
 const struct dc_context *ctx = pp->dm;
 struct amdgpu_device *adev = ctx->driver_context;
 struct smu_context *smu = &adev->smu;

 if (!smu->funcs)
  return PP_SMU_RESULT_UNSUPPORTED;


 if (smu_set_azalia_d3_pme(smu))
  return PP_SMU_RESULT_FAIL;

 return PP_SMU_RESULT_OK;
}
