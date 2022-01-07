
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kv_power_info {int current_rps; int requested_rps; } ;
struct amdgpu_ps {int dummy; } ;
struct TYPE_3__ {struct amdgpu_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;


 int kv_apply_state_adjust_rules (struct amdgpu_device*,int *,int *) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_update_requested_ps (struct amdgpu_device*,struct amdgpu_ps*) ;

__attribute__((used)) static int kv_dpm_pre_set_power_state(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct kv_power_info *pi = kv_get_pi(adev);
 struct amdgpu_ps requested_ps = *adev->pm.dpm.requested_ps;
 struct amdgpu_ps *new_ps = &requested_ps;

 kv_update_requested_ps(adev, new_ps);

 kv_apply_state_adjust_rules(adev,
        &pi->requested_rps,
        &pi->current_rps);

 return 0;
}
