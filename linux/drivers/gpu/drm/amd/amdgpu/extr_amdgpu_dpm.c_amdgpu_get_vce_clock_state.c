
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {size_t num_of_vce_states; struct amd_vce_state* vce_states; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;
struct amd_vce_state {int dummy; } ;



struct amd_vce_state*
amdgpu_get_vce_clock_state(void *handle, u32 idx)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (idx < adev->pm.dpm.num_of_vce_states)
  return &adev->pm.dpm.vce_states[idx];

 return ((void*)0);
}
