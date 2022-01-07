
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_prt_users; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 int amdgpu_vm_update_prt_state (struct amdgpu_device*) ;
 scalar_t__ atomic_dec_return (int *) ;

__attribute__((used)) static void amdgpu_vm_prt_put(struct amdgpu_device *adev)
{
 if (atomic_dec_return(&adev->vm_manager.num_prt_users) == 0)
  amdgpu_vm_update_prt_state(adev);
}
