
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int in_safe_mode; TYPE_1__* funcs; } ;
struct TYPE_5__ {TYPE_3__ rlc; } ;
struct amdgpu_device {int cg_flags; TYPE_2__ gfx; } ;
struct TYPE_4__ {int (* unset_safe_mode ) (struct amdgpu_device*) ;int (* is_rlc_enabled ) (struct amdgpu_device*) ;} ;


 int AMD_CG_SUPPORT_GFX_3D_CGCG ;
 int AMD_CG_SUPPORT_GFX_CGCG ;
 int AMD_CG_SUPPORT_GFX_MGCG ;
 int stub1 (struct amdgpu_device*) ;
 int stub2 (struct amdgpu_device*) ;

void amdgpu_gfx_rlc_exit_safe_mode(struct amdgpu_device *adev)
{
 if (!(adev->gfx.rlc.in_safe_mode))
  return;


 if (!adev->gfx.rlc.funcs->is_rlc_enabled(adev))
  return;

 if (adev->cg_flags &
     (AMD_CG_SUPPORT_GFX_CGCG | AMD_CG_SUPPORT_GFX_MGCG |
      AMD_CG_SUPPORT_GFX_3D_CGCG)) {
  adev->gfx.rlc.funcs->unset_safe_mode(adev);
  adev->gfx.rlc.in_safe_mode = 0;
 }
}
