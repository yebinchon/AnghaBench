
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lima_vm {int lock; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ start; } ;
struct lima_bo_va {scalar_t__ ref_count; int list; TYPE_1__ node; } ;
struct lima_bo {int lock; } ;


 int drm_mm_remove_node (TYPE_1__*) ;
 int kfree (struct lima_bo_va*) ;
 struct lima_bo_va* lima_vm_bo_find (struct lima_vm*,struct lima_bo*) ;
 int lima_vm_unmap_page_table (struct lima_vm*,scalar_t__,scalar_t__) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void lima_vm_bo_del(struct lima_vm *vm, struct lima_bo *bo)
{
 struct lima_bo_va *bo_va;

 mutex_lock(&bo->lock);

 bo_va = lima_vm_bo_find(vm, bo);
 if (--bo_va->ref_count > 0) {
  mutex_unlock(&bo->lock);
  return;
 }

 mutex_lock(&vm->lock);

 lima_vm_unmap_page_table(vm, bo_va->node.start,
     bo_va->node.start + bo_va->node.size - 1);

 drm_mm_remove_node(&bo_va->node);

 mutex_unlock(&vm->lock);

 list_del(&bo_va->list);

 mutex_unlock(&bo->lock);

 kfree(bo_va);
}
