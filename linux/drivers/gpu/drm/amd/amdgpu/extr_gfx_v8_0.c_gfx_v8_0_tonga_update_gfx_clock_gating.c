
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {int cg_flags; TYPE_2__ powerplay; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;
struct TYPE_3__ {scalar_t__ set_clockgating_by_smu; } ;


 int AMD_CG_STATE_UNGATE ;
 int AMD_CG_SUPPORT_GFX_CGCG ;
 int AMD_CG_SUPPORT_GFX_CGLS ;
 int AMD_CG_SUPPORT_GFX_MGCG ;
 int AMD_CG_SUPPORT_GFX_MGLS ;
 int PP_BLOCK_GFX_CG ;
 int PP_BLOCK_GFX_MG ;
 int PP_CG_MSG_ID (int ,int ,int ,int ) ;
 int PP_GROUP_GFX ;
 int PP_STATE_CG ;
 int PP_STATE_LS ;
 int PP_STATE_SUPPORT_CG ;
 int PP_STATE_SUPPORT_LS ;
 int amdgpu_dpm_set_clockgating_by_smu (struct amdgpu_device*,int ) ;

__attribute__((used)) static int gfx_v8_0_tonga_update_gfx_clock_gating(struct amdgpu_device *adev,
       enum amd_clockgating_state state)
{
 uint32_t msg_id, pp_state = 0;
 uint32_t pp_support_state = 0;

 if (adev->cg_flags & (AMD_CG_SUPPORT_GFX_CGCG | AMD_CG_SUPPORT_GFX_CGLS)) {
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGLS) {
   pp_support_state = PP_STATE_SUPPORT_LS;
   pp_state = PP_STATE_LS;
  }
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGCG) {
   pp_support_state |= PP_STATE_SUPPORT_CG;
   pp_state |= PP_STATE_CG;
  }
  if (state == AMD_CG_STATE_UNGATE)
   pp_state = 0;

  msg_id = PP_CG_MSG_ID(PP_GROUP_GFX,
    PP_BLOCK_GFX_CG,
    pp_support_state,
    pp_state);
  if (adev->powerplay.pp_funcs->set_clockgating_by_smu)
   amdgpu_dpm_set_clockgating_by_smu(adev, msg_id);
 }

 if (adev->cg_flags & (AMD_CG_SUPPORT_GFX_MGCG | AMD_CG_SUPPORT_GFX_MGLS)) {
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) {
   pp_support_state = PP_STATE_SUPPORT_LS;
   pp_state = PP_STATE_LS;
  }

  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGCG) {
   pp_support_state |= PP_STATE_SUPPORT_CG;
   pp_state |= PP_STATE_CG;
  }

  if (state == AMD_CG_STATE_UNGATE)
   pp_state = 0;

  msg_id = PP_CG_MSG_ID(PP_GROUP_GFX,
    PP_BLOCK_GFX_MG,
    pp_support_state,
    pp_state);
  if (adev->powerplay.pp_funcs->set_clockgating_by_smu)
   amdgpu_dpm_set_clockgating_by_smu(adev, msg_id);
 }

 return 0;
}
