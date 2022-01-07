
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int save_restore_gpu_addr; int clear_state_gpu_addr; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {int pg_flags; TYPE_2__ gfx; } ;


 int AMD_PG_SUPPORT_CP ;
 int AMD_PG_SUPPORT_GDS ;
 int AMD_PG_SUPPORT_GFX_DMG ;
 int AMD_PG_SUPPORT_GFX_PG ;
 int AMD_PG_SUPPORT_GFX_SMG ;
 int AMD_PG_SUPPORT_RLC_SMU_HS ;
 int WREG32 (int ,int) ;
 int gfx_v6_0_enable_cp_pg (struct amdgpu_device*,int) ;
 int gfx_v6_0_enable_gds_pg (struct amdgpu_device*,int) ;
 int gfx_v6_0_enable_sclk_slowdown_on_pd (struct amdgpu_device*,int) ;
 int gfx_v6_0_enable_sclk_slowdown_on_pu (struct amdgpu_device*,int) ;
 int gfx_v6_0_init_ao_cu_mask (struct amdgpu_device*) ;
 int gfx_v6_0_init_gfx_cgpg (struct amdgpu_device*) ;
 int gfx_v6_0_update_gfx_pg (struct amdgpu_device*,int) ;
 int mmRLC_CLEAR_STATE_RESTORE_BASE ;
 int mmRLC_SAVE_AND_RESTORE_BASE ;

__attribute__((used)) static void gfx_v6_0_init_pg(struct amdgpu_device *adev)
{
 if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_PG |
         AMD_PG_SUPPORT_GFX_SMG |
         AMD_PG_SUPPORT_GFX_DMG |
         AMD_PG_SUPPORT_CP |
         AMD_PG_SUPPORT_GDS |
         AMD_PG_SUPPORT_RLC_SMU_HS)) {
  gfx_v6_0_enable_sclk_slowdown_on_pu(adev, 1);
  gfx_v6_0_enable_sclk_slowdown_on_pd(adev, 1);
  if (adev->pg_flags & AMD_PG_SUPPORT_GFX_PG) {
   gfx_v6_0_init_gfx_cgpg(adev);
   gfx_v6_0_enable_cp_pg(adev, 1);
   gfx_v6_0_enable_gds_pg(adev, 1);
  } else {
   WREG32(mmRLC_SAVE_AND_RESTORE_BASE, adev->gfx.rlc.save_restore_gpu_addr >> 8);
   WREG32(mmRLC_CLEAR_STATE_RESTORE_BASE, adev->gfx.rlc.clear_state_gpu_addr >> 8);

  }
  gfx_v6_0_init_ao_cu_mask(adev);
  gfx_v6_0_update_gfx_pg(adev, 1);
 } else {

  WREG32(mmRLC_SAVE_AND_RESTORE_BASE, adev->gfx.rlc.save_restore_gpu_addr >> 8);
  WREG32(mmRLC_CLEAR_STATE_RESTORE_BASE, adev->gfx.rlc.clear_state_gpu_addr >> 8);
 }
}
