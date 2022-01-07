
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct dma_fence {size_t context; } ;
struct TYPE_2__ {int lock; } ;
struct amdgpu_sa_manager {TYPE_1__ wq; int * flist; } ;
struct amdgpu_sa_bo {int flist; int fence; struct amdgpu_sa_manager* manager; } ;
struct amdgpu_device {int dummy; } ;


 size_t AMDGPU_SA_NUM_FENCE_LISTS ;
 int amdgpu_sa_bo_remove_locked (struct amdgpu_sa_bo*) ;
 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_is_signaled (struct dma_fence*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all_locked (TYPE_1__*) ;

void amdgpu_sa_bo_free(struct amdgpu_device *adev, struct amdgpu_sa_bo **sa_bo,
         struct dma_fence *fence)
{
 struct amdgpu_sa_manager *sa_manager;

 if (sa_bo == ((void*)0) || *sa_bo == ((void*)0)) {
  return;
 }

 sa_manager = (*sa_bo)->manager;
 spin_lock(&sa_manager->wq.lock);
 if (fence && !dma_fence_is_signaled(fence)) {
  uint32_t idx;

  (*sa_bo)->fence = dma_fence_get(fence);
  idx = fence->context % AMDGPU_SA_NUM_FENCE_LISTS;
  list_add_tail(&(*sa_bo)->flist, &sa_manager->flist[idx]);
 } else {
  amdgpu_sa_bo_remove_locked(*sa_bo);
 }
 wake_up_all_locked(&sa_manager->wq);
 spin_unlock(&sa_manager->wq.lock);
 *sa_bo = ((void*)0);
}
