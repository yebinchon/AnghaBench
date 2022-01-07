
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int pg_flags; int asic_type; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;
 int AMD_PG_SUPPORT_CP ;
 int AMD_PG_SUPPORT_GFX_DMG ;
 int AMD_PG_SUPPORT_GFX_QUICK_MG ;
 int AMD_PG_SUPPORT_GFX_SMG ;
 int AMD_PG_SUPPORT_RLC_SMU_HS ;





 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int cz_enable_cp_power_gating (struct amdgpu_device*,int) ;
 int cz_enable_sck_slow_down_on_power_down (struct amdgpu_device*,int) ;
 int cz_enable_sck_slow_down_on_power_up (struct amdgpu_device*,int) ;
 int cz_update_gfx_cg_power_gating (struct amdgpu_device*,int) ;
 int gfx_v8_0_enable_gfx_dynamic_mg_power_gating (struct amdgpu_device*,int) ;
 int gfx_v8_0_enable_gfx_static_mg_power_gating (struct amdgpu_device*,int) ;
 int polaris11_enable_gfx_quick_mg_power_gating (struct amdgpu_device*,int) ;

__attribute__((used)) static int gfx_v8_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 bool enable = (state == AMD_PG_STATE_GATE);

 if (amdgpu_sriov_vf(adev))
  return 0;

 if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_SMG |
    AMD_PG_SUPPORT_RLC_SMU_HS |
    AMD_PG_SUPPORT_CP |
    AMD_PG_SUPPORT_GFX_DMG))
  amdgpu_gfx_rlc_enter_safe_mode(adev);
 switch (adev->asic_type) {
 case 132:
 case 129:

  if (adev->pg_flags & AMD_PG_SUPPORT_RLC_SMU_HS) {
   cz_enable_sck_slow_down_on_power_up(adev, 1);
   cz_enable_sck_slow_down_on_power_down(adev, 1);
  } else {
   cz_enable_sck_slow_down_on_power_up(adev, 0);
   cz_enable_sck_slow_down_on_power_down(adev, 0);
  }
  if (adev->pg_flags & AMD_PG_SUPPORT_CP)
   cz_enable_cp_power_gating(adev, 1);
  else
   cz_enable_cp_power_gating(adev, 0);

  cz_update_gfx_cg_power_gating(adev, enable);

  if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_SMG) && enable)
   gfx_v8_0_enable_gfx_static_mg_power_gating(adev, 1);
  else
   gfx_v8_0_enable_gfx_static_mg_power_gating(adev, 0);

  if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_DMG) && enable)
   gfx_v8_0_enable_gfx_dynamic_mg_power_gating(adev, 1);
  else
   gfx_v8_0_enable_gfx_dynamic_mg_power_gating(adev, 0);
  break;
 case 131:
 case 130:
 case 128:
  if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_SMG) && enable)
   gfx_v8_0_enable_gfx_static_mg_power_gating(adev, 1);
  else
   gfx_v8_0_enable_gfx_static_mg_power_gating(adev, 0);

  if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_DMG) && enable)
   gfx_v8_0_enable_gfx_dynamic_mg_power_gating(adev, 1);
  else
   gfx_v8_0_enable_gfx_dynamic_mg_power_gating(adev, 0);

  if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_QUICK_MG) && enable)
   polaris11_enable_gfx_quick_mg_power_gating(adev, 1);
  else
   polaris11_enable_gfx_quick_mg_power_gating(adev, 0);
  break;
 default:
  break;
 }
 if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_SMG |
    AMD_PG_SUPPORT_RLC_SMU_HS |
    AMD_PG_SUPPORT_CP |
    AMD_PG_SUPPORT_GFX_DMG))
  amdgpu_gfx_rlc_exit_safe_mode(adev);
 return 0;
}
