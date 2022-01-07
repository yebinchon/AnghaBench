
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gfx_off_delay_work; } ;
struct amdgpu_device {int asic_type; int pg_flags; TYPE_1__ gfx; int smu; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;
 int AMD_PG_SUPPORT_CP ;
 int AMD_PG_SUPPORT_RLC_SMU_HS ;



 int amdgpu_gfx_off_ctrl (struct amdgpu_device*,int) ;
 int cancel_delayed_work_sync (int *) ;
 int gfx_v9_0_enable_cp_power_gating (struct amdgpu_device*,int) ;
 int gfx_v9_0_enable_sck_slow_down_on_power_down (struct amdgpu_device*,int) ;
 int gfx_v9_0_enable_sck_slow_down_on_power_up (struct amdgpu_device*,int) ;
 int gfx_v9_0_update_gfx_cg_power_gating (struct amdgpu_device*,int) ;
 int gfx_v9_0_update_gfx_mg_power_gating (struct amdgpu_device*,int) ;
 int is_support_sw_smu (struct amdgpu_device*) ;
 int smu_set_gfx_cgpg (int *,int) ;

__attribute__((used)) static int gfx_v9_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 bool enable = (state == AMD_PG_STATE_GATE) ? 1 : 0;

 switch (adev->asic_type) {
 case 130:
 case 129:
  if (!enable) {
   amdgpu_gfx_off_ctrl(adev, 0);
   cancel_delayed_work_sync(&adev->gfx.gfx_off_delay_work);
  }
  if (adev->pg_flags & AMD_PG_SUPPORT_RLC_SMU_HS) {
   gfx_v9_0_enable_sck_slow_down_on_power_up(adev, 1);
   gfx_v9_0_enable_sck_slow_down_on_power_down(adev, 1);
  } else {
   gfx_v9_0_enable_sck_slow_down_on_power_up(adev, 0);
   gfx_v9_0_enable_sck_slow_down_on_power_down(adev, 0);
  }

  if (adev->pg_flags & AMD_PG_SUPPORT_CP)
   gfx_v9_0_enable_cp_power_gating(adev, 1);
  else
   gfx_v9_0_enable_cp_power_gating(adev, 0);


  if (is_support_sw_smu(adev) && enable)
   smu_set_gfx_cgpg(&adev->smu, enable);
  gfx_v9_0_update_gfx_cg_power_gating(adev, enable);


  gfx_v9_0_update_gfx_mg_power_gating(adev, enable);

  if (enable)
   amdgpu_gfx_off_ctrl(adev, 1);
  break;
 case 128:
  if (!enable) {
   amdgpu_gfx_off_ctrl(adev, 0);
   cancel_delayed_work_sync(&adev->gfx.gfx_off_delay_work);
  } else {
   amdgpu_gfx_off_ctrl(adev, 1);
  }
  break;
 default:
  break;
 }

 return 0;
}
