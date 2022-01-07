
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_state; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;
typedef enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;


 int AMD_PG_STATE_GATE ;
 int vcn_v2_0_start (struct amdgpu_device*) ;
 int vcn_v2_0_stop (struct amdgpu_device*) ;

__attribute__((used)) static int vcn_v2_0_set_powergating_state(void *handle,
       enum amd_powergating_state state)
{







 int ret;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (state == adev->vcn.cur_state)
  return 0;

 if (state == AMD_PG_STATE_GATE)
  ret = vcn_v2_0_stop(adev);
 else
  ret = vcn_v2_0_start(adev);

 if (!ret)
  adev->vcn.cur_state = state;
 return ret;
}
