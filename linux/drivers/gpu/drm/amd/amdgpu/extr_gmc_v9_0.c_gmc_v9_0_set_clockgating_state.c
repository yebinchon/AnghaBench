
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ asic_type; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;


 scalar_t__ CHIP_ARCTURUS ;
 int athub_v1_0_set_clockgating (struct amdgpu_device*,int) ;
 int mmhub_v1_0_set_clockgating (struct amdgpu_device*,int) ;
 int mmhub_v9_4_set_clockgating (struct amdgpu_device*,int) ;

__attribute__((used)) static int gmc_v9_0_set_clockgating_state(void *handle,
     enum amd_clockgating_state state)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->asic_type == CHIP_ARCTURUS)
  mmhub_v9_4_set_clockgating(adev, state);
 else
  mmhub_v1_0_set_clockgating(adev, state);

 athub_v1_0_set_clockgating(adev, state);

 return 0;
}
