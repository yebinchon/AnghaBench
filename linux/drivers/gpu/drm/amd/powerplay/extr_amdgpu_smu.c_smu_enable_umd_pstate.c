
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_dpm_context {int dpm_level; int saved_dpm_level; int enable_umd_pstate; int dpm_context; } ;
struct smu_context {int adev; int pm_enabled; struct smu_dpm_context smu_dpm; } ;
typedef enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;


 int AMD_CG_STATE_GATE ;
 int AMD_CG_STATE_UNGATE ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_EXIT ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_PEAK ;
 int AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD ;
 int AMD_IP_BLOCK_TYPE_GFX ;
 int AMD_PG_STATE_GATE ;
 int AMD_PG_STATE_UNGATE ;
 int EINVAL ;
 int amdgpu_device_ip_set_clockgating_state (int ,int ,int ) ;
 int amdgpu_device_ip_set_powergating_state (int ,int ,int ) ;

__attribute__((used)) static int smu_enable_umd_pstate(void *handle,
        enum amd_dpm_forced_level *level)
{
 uint32_t profile_mode_mask = AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD |
     AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK |
     AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK |
     AMD_DPM_FORCED_LEVEL_PROFILE_PEAK;

 struct smu_context *smu = (struct smu_context*)(handle);
 struct smu_dpm_context *smu_dpm_ctx = &(smu->smu_dpm);
 if (!smu->pm_enabled || !smu_dpm_ctx->dpm_context)
  return -EINVAL;

 if (!(smu_dpm_ctx->dpm_level & profile_mode_mask)) {

  if (*level & profile_mode_mask) {
   smu_dpm_ctx->saved_dpm_level = smu_dpm_ctx->dpm_level;
   smu_dpm_ctx->enable_umd_pstate = 1;
   amdgpu_device_ip_set_clockgating_state(smu->adev,
              AMD_IP_BLOCK_TYPE_GFX,
              AMD_CG_STATE_UNGATE);
   amdgpu_device_ip_set_powergating_state(smu->adev,
              AMD_IP_BLOCK_TYPE_GFX,
              AMD_PG_STATE_UNGATE);
  }
 } else {

  if (!(*level & profile_mode_mask)) {
   if (*level == AMD_DPM_FORCED_LEVEL_PROFILE_EXIT)
    *level = smu_dpm_ctx->saved_dpm_level;
   smu_dpm_ctx->enable_umd_pstate = 0;
   amdgpu_device_ip_set_clockgating_state(smu->adev,
              AMD_IP_BLOCK_TYPE_GFX,
              AMD_CG_STATE_GATE);
   amdgpu_device_ip_set_powergating_state(smu->adev,
              AMD_IP_BLOCK_TYPE_GFX,
              AMD_PG_STATE_GATE);
  }
 }

 return 0;
}
