
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_vm {int mutex; int status_lock; int freed; int va; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ last; scalar_t__ start; } ;
struct radeon_bo_va {int last_pt_update; int vm_status; int bo; TYPE_1__ it; int bo_list; struct radeon_vm* vm; } ;


 int interval_tree_remove (TYPE_1__*,int *) ;
 int kfree (struct radeon_bo_va*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_bo_ref (int ) ;
 int radeon_fence_unref (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void radeon_vm_bo_rmv(struct radeon_device *rdev,
        struct radeon_bo_va *bo_va)
{
 struct radeon_vm *vm = bo_va->vm;

 list_del(&bo_va->bo_list);

 mutex_lock(&vm->mutex);
 if (bo_va->it.start || bo_va->it.last)
  interval_tree_remove(&bo_va->it, &vm->va);

 spin_lock(&vm->status_lock);
 list_del(&bo_va->vm_status);
 if (bo_va->it.start || bo_va->it.last) {
  bo_va->bo = radeon_bo_ref(bo_va->bo);
  list_add(&bo_va->vm_status, &vm->freed);
 } else {
  radeon_fence_unref(&bo_va->last_pt_update);
  kfree(bo_va);
 }
 spin_unlock(&vm->status_lock);

 mutex_unlock(&vm->mutex);
}
