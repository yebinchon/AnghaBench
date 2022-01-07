
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amdgpu_vm_bo_base {TYPE_1__* vm; int vm_status; } ;
struct TYPE_2__ {int invalidated_lock; } ;


 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void amdgpu_vm_bo_done(struct amdgpu_vm_bo_base *vm_bo)
{
 spin_lock(&vm_bo->vm->invalidated_lock);
 list_del_init(&vm_bo->vm_status);
 spin_unlock(&vm_bo->vm->invalidated_lock);
}
