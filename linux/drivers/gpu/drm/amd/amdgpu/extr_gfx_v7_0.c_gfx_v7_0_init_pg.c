
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; } ;


 int AMD_PG_SUPPORT_CP ;
 int AMD_PG_SUPPORT_GDS ;
 int AMD_PG_SUPPORT_GFX_DMG ;
 int AMD_PG_SUPPORT_GFX_PG ;
 int AMD_PG_SUPPORT_GFX_SMG ;
 int AMD_PG_SUPPORT_RLC_SMU_HS ;
 int gfx_v7_0_enable_cp_pg (struct amdgpu_device*,int) ;
 int gfx_v7_0_enable_gds_pg (struct amdgpu_device*,int) ;
 int gfx_v7_0_enable_sclk_slowdown_on_pd (struct amdgpu_device*,int) ;
 int gfx_v7_0_enable_sclk_slowdown_on_pu (struct amdgpu_device*,int) ;
 int gfx_v7_0_init_ao_cu_mask (struct amdgpu_device*) ;
 int gfx_v7_0_init_gfx_cgpg (struct amdgpu_device*) ;
 int gfx_v7_0_update_gfx_pg (struct amdgpu_device*,int) ;

__attribute__((used)) static void gfx_v7_0_init_pg(struct amdgpu_device *adev)
{
 if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_PG |
         AMD_PG_SUPPORT_GFX_SMG |
         AMD_PG_SUPPORT_GFX_DMG |
         AMD_PG_SUPPORT_CP |
         AMD_PG_SUPPORT_GDS |
         AMD_PG_SUPPORT_RLC_SMU_HS)) {
  gfx_v7_0_enable_sclk_slowdown_on_pu(adev, 1);
  gfx_v7_0_enable_sclk_slowdown_on_pd(adev, 1);
  if (adev->pg_flags & AMD_PG_SUPPORT_GFX_PG) {
   gfx_v7_0_init_gfx_cgpg(adev);
   gfx_v7_0_enable_cp_pg(adev, 1);
   gfx_v7_0_enable_gds_pg(adev, 1);
  }
  gfx_v7_0_init_ao_cu_mask(adev);
  gfx_v7_0_update_gfx_pg(adev, 1);
 }
}
