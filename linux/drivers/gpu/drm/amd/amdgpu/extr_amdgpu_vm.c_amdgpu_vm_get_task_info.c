
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_task_info {int dummy; } ;
struct amdgpu_vm {struct amdgpu_task_info task_info; } ;
struct TYPE_2__ {int pasid_lock; int pasid_idr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 struct amdgpu_vm* idr_find (int *,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void amdgpu_vm_get_task_info(struct amdgpu_device *adev, unsigned int pasid,
    struct amdgpu_task_info *task_info)
{
 struct amdgpu_vm *vm;
 unsigned long flags;

 spin_lock_irqsave(&adev->vm_manager.pasid_lock, flags);

 vm = idr_find(&adev->vm_manager.pasid_idr, pasid);
 if (vm)
  *task_info = vm->task_info;

 spin_unlock_irqrestore(&adev->vm_manager.pasid_lock, flags);
}
