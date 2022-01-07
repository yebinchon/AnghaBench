
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vm {scalar_t__ pasid; } ;
struct TYPE_2__ {int pasid_lock; int pasid_idr; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;


 int idr_remove (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void amdgpu_vm_release_compute(struct amdgpu_device *adev, struct amdgpu_vm *vm)
{
 if (vm->pasid) {
  unsigned long flags;

  spin_lock_irqsave(&adev->vm_manager.pasid_lock, flags);
  idr_remove(&adev->vm_manager.pasid_idr, vm->pasid);
  spin_unlock_irqrestore(&adev->vm_manager.pasid_lock, flags);
 }
 vm->pasid = 0;
}
