
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int funcs; } ;
struct pp_smu {struct dc_context* dm; } ;
struct pp_display_clock_request {int clock_freq_in_khz; int clock_type; } ;
struct dc_context {struct amdgpu_device* driver_context; } ;
struct amdgpu_device {struct smu_context smu; } ;
typedef enum pp_smu_status { ____Placeholder_pp_smu_status } pp_smu_status ;
typedef enum pp_smu_nv_clock_id { ____Placeholder_pp_smu_nv_clock_id } pp_smu_nv_clock_id ;





 int PP_SMU_RESULT_FAIL ;
 int PP_SMU_RESULT_OK ;
 int PP_SMU_RESULT_UNSUPPORTED ;
 int amd_pp_disp_clock ;
 int amd_pp_phy_clock ;
 int amd_pp_pixel_clock ;
 scalar_t__ smu_display_clock_voltage_request (struct smu_context*,struct pp_display_clock_request*) ;

enum pp_smu_status pp_nv_set_voltage_by_freq(struct pp_smu *pp,
  enum pp_smu_nv_clock_id clock_id, int mhz)
{
 const struct dc_context *ctx = pp->dm;
 struct amdgpu_device *adev = ctx->driver_context;
 struct smu_context *smu = &adev->smu;
 struct pp_display_clock_request clock_req;

 if (!smu->funcs)
  return PP_SMU_RESULT_UNSUPPORTED;

 switch (clock_id) {
 case 130:
  clock_req.clock_type = amd_pp_disp_clock;
  break;
 case 129:
  clock_req.clock_type = amd_pp_phy_clock;
  break;
 case 128:
  clock_req.clock_type = amd_pp_pixel_clock;
  break;
 default:
  break;
 }
 clock_req.clock_freq_in_khz = mhz * 1000;




 if (smu_display_clock_voltage_request(smu, &clock_req))
  return PP_SMU_RESULT_FAIL;

 return PP_SMU_RESULT_OK;
}
