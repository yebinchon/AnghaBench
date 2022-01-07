
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; int smu; } ;


 int AMD_PG_SUPPORT_GFX_PG ;
 int AMD_PG_SUPPORT_GFX_PIPELINE ;
 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int gfx_v9_0_enable_gfx_cg_power_gating (struct amdgpu_device*,int) ;
 int gfx_v9_0_enable_gfx_pipeline_powergating (struct amdgpu_device*,int) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_set_gfx_cgpg (int *,int) ;

__attribute__((used)) static void gfx_v9_0_update_gfx_cg_power_gating(struct amdgpu_device *adev,
      bool enable)
{
 amdgpu_gfx_rlc_enter_safe_mode(adev);

 if (is_support_sw_smu(adev) && !enable)
  smu_set_gfx_cgpg(&adev->smu, enable);

 if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_PG) && enable) {
  gfx_v9_0_enable_gfx_cg_power_gating(adev, 1);
  if (adev->pg_flags & AMD_PG_SUPPORT_GFX_PIPELINE)
   gfx_v9_0_enable_gfx_pipeline_powergating(adev, 1);
 } else {
  gfx_v9_0_enable_gfx_cg_power_gating(adev, 0);
  gfx_v9_0_enable_gfx_pipeline_powergating(adev, 0);
 }

 amdgpu_gfx_rlc_exit_safe_mode(adev);
}
