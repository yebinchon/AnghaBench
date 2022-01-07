
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int flags; TYPE_2__* vma; } ;
struct TYPE_6__ {int resv; } ;
struct ttm_buffer_object {int * moving; TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* vm_mm; } ;
struct TYPE_4__ {int mmap_sem; } ;


 int ERESTARTSYS ;
 int FAULT_FLAG_ALLOW_RETRY ;
 int FAULT_FLAG_RETRY_NOWAIT ;
 int VM_FAULT_NOPAGE ;
 int VM_FAULT_RETRY ;
 int VM_FAULT_SIGBUS ;
 scalar_t__ dma_fence_is_signaled (int *) ;
 int dma_fence_put (int *) ;
 int dma_fence_wait (int *,int) ;
 int dma_resv_unlock (int ) ;
 scalar_t__ likely (int) ;
 int ttm_bo_get (struct ttm_buffer_object*) ;
 int ttm_bo_put (struct ttm_buffer_object*) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static vm_fault_t ttm_bo_vm_fault_idle(struct ttm_buffer_object *bo,
    struct vm_fault *vmf)
{
 vm_fault_t ret = 0;
 int err = 0;

 if (likely(!bo->moving))
  goto out_unlock;




 if (dma_fence_is_signaled(bo->moving))
  goto out_clear;





 if (vmf->flags & FAULT_FLAG_ALLOW_RETRY) {
  ret = VM_FAULT_RETRY;
  if (vmf->flags & FAULT_FLAG_RETRY_NOWAIT)
   goto out_unlock;

  ttm_bo_get(bo);
  up_read(&vmf->vma->vm_mm->mmap_sem);
  (void) dma_fence_wait(bo->moving, 1);
  dma_resv_unlock(bo->base.resv);
  ttm_bo_put(bo);
  goto out_unlock;
 }




 err = dma_fence_wait(bo->moving, 1);
 if (unlikely(err != 0)) {
  ret = (err != -ERESTARTSYS) ? VM_FAULT_SIGBUS :
   VM_FAULT_NOPAGE;
  goto out_unlock;
 }

out_clear:
 dma_fence_put(bo->moving);
 bo->moving = ((void*)0);

out_unlock:
 return ret;
}
