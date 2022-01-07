
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct amdgpu_vm_update_params {TYPE_3__* vm; } ;
struct TYPE_4__ {int bo; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ root; } ;


 int amdgpu_bo_sync_wait (int ,void*,int) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int amdgpu_vm_cpu_prepare(struct amdgpu_vm_update_params *p, void *owner,
     struct dma_fence *exclusive)
{
 int r;




 r = amdgpu_bo_sync_wait(p->vm->root.base.bo, owner, 1);
 if (unlikely(r))
  return r;


 if (exclusive) {
  r = dma_fence_wait(exclusive, 1);
  if (unlikely(r))
   return r;
 }

 return 0;
}
