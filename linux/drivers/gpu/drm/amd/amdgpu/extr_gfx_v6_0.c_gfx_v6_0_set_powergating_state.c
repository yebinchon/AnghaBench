
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;
 int AMD_PG_SUPPORT_CP ;
 int AMD_PG_SUPPORT_GDS ;
 int AMD_PG_SUPPORT_GFX_DMG ;
 int AMD_PG_SUPPORT_GFX_PG ;
 int AMD_PG_SUPPORT_GFX_SMG ;
 int AMD_PG_SUPPORT_RLC_SMU_HS ;
 int gfx_v6_0_enable_cp_pg (struct amdgpu_device*,int) ;
 int gfx_v6_0_enable_gds_pg (struct amdgpu_device*,int) ;
 int gfx_v6_0_update_gfx_pg (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v6_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{
 bool gate = 0;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (state == AMD_PG_STATE_GATE)
  gate = 1;

 if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_PG |
         AMD_PG_SUPPORT_GFX_SMG |
         AMD_PG_SUPPORT_GFX_DMG |
         AMD_PG_SUPPORT_CP |
         AMD_PG_SUPPORT_GDS |
         AMD_PG_SUPPORT_RLC_SMU_HS)) {
  gfx_v6_0_update_gfx_pg(adev, gate);
  if (adev->pg_flags & AMD_PG_SUPPORT_GFX_PG) {
   gfx_v6_0_enable_cp_pg(adev, gate);
   gfx_v6_0_enable_gds_pg(adev, gate);
  }
 }

 return 0;
}
