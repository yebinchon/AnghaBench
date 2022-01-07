
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_GFX_DMG ;
 int AMD_PG_SUPPORT_GFX_SMG ;
 int gfx_v9_0_enable_gfx_dynamic_mg_power_gating (struct amdgpu_device*,int) ;
 int gfx_v9_0_enable_gfx_static_mg_power_gating (struct amdgpu_device*,int) ;

__attribute__((used)) static void gfx_v9_0_update_gfx_mg_power_gating(struct amdgpu_device *adev,
      bool enable)
{



 if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_SMG) && enable)
  gfx_v9_0_enable_gfx_static_mg_power_gating(adev, 1);
 else
  gfx_v9_0_enable_gfx_static_mg_power_gating(adev, 0);

 if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_DMG) && enable)
  gfx_v9_0_enable_gfx_dynamic_mg_power_gating(adev, 1);
 else
  gfx_v9_0_enable_gfx_dynamic_mg_power_gating(adev, 0);


}
