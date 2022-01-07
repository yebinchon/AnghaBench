
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cp_table_gpu_addr; scalar_t__ is_rlc_v2_1; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {int pg_flags; TYPE_2__ gfx; } ;


 int AMD_PG_SUPPORT_CP ;
 int AMD_PG_SUPPORT_GDS ;
 int AMD_PG_SUPPORT_GFX_DMG ;
 int AMD_PG_SUPPORT_GFX_PG ;
 int AMD_PG_SUPPORT_GFX_SMG ;
 int AMD_PG_SUPPORT_RLC_SMU_HS ;
 int WREG32 (int ,int) ;
 int gfx_v9_0_enable_save_restore_machine (struct amdgpu_device*) ;
 int gfx_v9_0_init_csb (struct amdgpu_device*) ;
 int gfx_v9_0_init_gfx_power_gating (struct amdgpu_device*) ;
 int gfx_v9_1_init_rlc_save_restore_list (struct amdgpu_device*) ;
 int mmRLC_JUMP_TABLE_RESTORE ;

__attribute__((used)) static void gfx_v9_0_init_pg(struct amdgpu_device *adev)
{
 gfx_v9_0_init_csb(adev);





 if (adev->gfx.rlc.is_rlc_v2_1) {
  gfx_v9_1_init_rlc_save_restore_list(adev);
  gfx_v9_0_enable_save_restore_machine(adev);
 }

 if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_PG |
         AMD_PG_SUPPORT_GFX_SMG |
         AMD_PG_SUPPORT_GFX_DMG |
         AMD_PG_SUPPORT_CP |
         AMD_PG_SUPPORT_GDS |
         AMD_PG_SUPPORT_RLC_SMU_HS)) {
  WREG32(mmRLC_JUMP_TABLE_RESTORE,
         adev->gfx.rlc.cp_table_gpu_addr >> 8);
  gfx_v9_0_init_gfx_power_gating(adev);
 }
}
