
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pp_feature; } ;
struct TYPE_6__ {int is_rlc_v2_1; } ;
struct TYPE_7__ {int rlc_fw_version; int rlc_feature_version; TYPE_2__ rlc; } ;
struct amdgpu_device {int asic_type; int rev_id; int pg_flags; TYPE_4__ pm; TYPE_3__ gfx; TYPE_1__* pdev; } ;
struct TYPE_5__ {int device; } ;


 int AMD_PG_SUPPORT_CP ;
 int AMD_PG_SUPPORT_GFX_PG ;
 int AMD_PG_SUPPORT_RLC_SMU_HS ;





 int PP_GFXOFF_MASK ;

__attribute__((used)) static void gfx_v9_0_check_if_need_gfxoff(struct amdgpu_device *adev)
{
 switch (adev->asic_type) {
 case 130:
 case 129:
 case 128:
  break;
 case 132:
  if (!(adev->rev_id >= 0x8 || adev->pdev->device == 0x15d8)
   &&((adev->gfx.rlc_fw_version != 106 &&
        adev->gfx.rlc_fw_version < 531) ||
       (adev->gfx.rlc_fw_version == 53815) ||
       (adev->gfx.rlc_feature_version < 1) ||
       !adev->gfx.rlc.is_rlc_v2_1))
   adev->pm.pp_feature &= ~PP_GFXOFF_MASK;

  if (adev->pm.pp_feature & PP_GFXOFF_MASK)
   adev->pg_flags |= AMD_PG_SUPPORT_GFX_PG |
    AMD_PG_SUPPORT_CP |
    AMD_PG_SUPPORT_RLC_SMU_HS;
  break;
 case 131:
  if (adev->pm.pp_feature & PP_GFXOFF_MASK)
   adev->pg_flags |= AMD_PG_SUPPORT_GFX_PG |
    AMD_PG_SUPPORT_CP |
    AMD_PG_SUPPORT_RLC_SMU_HS;
  break;
 default:
  break;
 }
}
