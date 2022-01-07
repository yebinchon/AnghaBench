
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lima_vm {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct lima_bo_va {TYPE_1__ node; } ;
struct lima_bo {int lock; } ;


 struct lima_bo_va* lima_vm_bo_find (struct lima_vm*,struct lima_bo*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 lima_vm_get_va(struct lima_vm *vm, struct lima_bo *bo)
{
 struct lima_bo_va *bo_va;
 u32 ret;

 mutex_lock(&bo->lock);

 bo_va = lima_vm_bo_find(vm, bo);
 ret = bo_va->node.start;

 mutex_unlock(&bo->lock);

 return ret;
}
