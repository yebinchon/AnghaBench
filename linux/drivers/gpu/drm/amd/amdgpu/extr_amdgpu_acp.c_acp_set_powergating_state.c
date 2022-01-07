
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;
struct TYPE_3__ {scalar_t__ set_powergating_by_smu; } ;


 int AMD_IP_BLOCK_TYPE_ACP ;
 int AMD_PG_STATE_GATE ;
 int amdgpu_dpm_set_powergating_by_smu (struct amdgpu_device*,int ,int) ;

__attribute__((used)) static int acp_set_powergating_state(void *handle,
         enum amd_powergating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 bool enable = state == AMD_PG_STATE_GATE ? 1 : 0;

 if (adev->powerplay.pp_funcs &&
  adev->powerplay.pp_funcs->set_powergating_by_smu)
  amdgpu_dpm_set_powergating_by_smu(adev, AMD_IP_BLOCK_TYPE_ACP, enable);

 return 0;
}
