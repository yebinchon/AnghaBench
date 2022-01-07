
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_GFX_PG ;
 int AMD_PG_SUPPORT_GFX_PIPELINE ;
 int cz_enable_gfx_cg_power_gating (struct amdgpu_device*,int) ;
 int cz_enable_gfx_pipeline_power_gating (struct amdgpu_device*,int) ;

__attribute__((used)) static void cz_update_gfx_cg_power_gating(struct amdgpu_device *adev,
       bool enable)
{
 if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_PG) && enable) {
  cz_enable_gfx_cg_power_gating(adev, 1);
  if (adev->pg_flags & AMD_PG_SUPPORT_GFX_PIPELINE)
   cz_enable_gfx_pipeline_power_gating(adev, 1);
 } else {
  cz_enable_gfx_cg_power_gating(adev, 0);
  cz_enable_gfx_pipeline_power_gating(adev, 0);
 }
}
