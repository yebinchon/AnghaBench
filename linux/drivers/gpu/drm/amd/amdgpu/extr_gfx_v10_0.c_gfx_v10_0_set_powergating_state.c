
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gfx_off_delay_work; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gfx; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;


 int amdgpu_gfx_off_ctrl (struct amdgpu_device*,int) ;
 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static int gfx_v10_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 bool enable = (state == AMD_PG_STATE_GATE) ? 1 : 0;
 switch (adev->asic_type) {
 case 129:
 case 128:
  if (!enable) {
   amdgpu_gfx_off_ctrl(adev, 0);
   cancel_delayed_work_sync(&adev->gfx.gfx_off_delay_work);
  } else
   amdgpu_gfx_off_ctrl(adev, 1);
  break;
 default:
  break;
 }
 return 0;
}
