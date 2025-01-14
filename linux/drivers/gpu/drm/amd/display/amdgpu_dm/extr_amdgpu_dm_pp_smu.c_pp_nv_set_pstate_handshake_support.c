
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
struct pp_smu {struct dc_context* dm; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct amdgpu_device {struct smu_context smu; } ;
typedef enum pp_smu_status { ____Placeholder_pp_smu_status } pp_smu_status ;
typedef int BOOLEAN ;


 int PP_SMU_RESULT_FAIL ;
 int PP_SMU_RESULT_OK ;
 scalar_t__ smu_display_disable_memory_clock_switch (struct smu_context*,int) ;

enum pp_smu_status pp_nv_set_pstate_handshake_support(
 struct pp_smu *pp, BOOLEAN pstate_handshake_supported)
{
 const struct dc_context *ctx = pp->dm;
 struct amdgpu_device *adev = ctx->driver_context;
 struct smu_context *smu = &adev->smu;

 if (smu_display_disable_memory_clock_switch(smu, !pstate_handshake_supported))
  return PP_SMU_RESULT_FAIL;

 return PP_SMU_RESULT_OK;
}
