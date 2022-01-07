
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vm_bo_base {TYPE_1__* vm; int vm_status; } ;
struct TYPE_2__ {int invalidated_lock; int invalidated; } ;


 int list_move (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void amdgpu_vm_bo_invalidated(struct amdgpu_vm_bo_base *vm_bo)
{
 spin_lock(&vm_bo->vm->invalidated_lock);
 list_move(&vm_bo->vm_status, &vm_bo->vm->invalidated);
 spin_unlock(&vm_bo->vm->invalidated_lock);
}
