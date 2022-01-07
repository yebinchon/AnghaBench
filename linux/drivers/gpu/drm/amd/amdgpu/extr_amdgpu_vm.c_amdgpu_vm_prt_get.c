
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_prt_users; } ;
struct TYPE_5__ {TYPE_1__* gmc_funcs; } ;
struct amdgpu_device {TYPE_3__ vm_manager; TYPE_2__ gmc; } ;
struct TYPE_4__ {int set_prt; } ;


 int amdgpu_vm_update_prt_state (struct amdgpu_device*) ;
 int atomic_inc_return (int *) ;

__attribute__((used)) static void amdgpu_vm_prt_get(struct amdgpu_device *adev)
{
 if (!adev->gmc.gmc_funcs->set_prt)
  return;

 if (atomic_inc_return(&adev->vm_manager.num_prt_users) == 1)
  amdgpu_vm_update_prt_state(adev);
}
