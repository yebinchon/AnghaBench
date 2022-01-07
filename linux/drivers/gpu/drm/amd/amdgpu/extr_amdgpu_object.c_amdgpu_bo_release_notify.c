
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int resv; } ;
struct TYPE_3__ {scalar_t__ mem_type; int mm_node; } ;
struct ttm_buffer_object {TYPE_2__ base; TYPE_1__ mem; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_bo {int flags; scalar_t__ kfd_bo; } ;


 int AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE ;
 int AMDGPU_POISON ;
 scalar_t__ TTM_PL_VRAM ;
 int WARN_ON (int) ;
 int amdgpu_amdkfd_unreserve_memory_limit (struct amdgpu_bo*) ;
 int amdgpu_bo_fence (struct amdgpu_bo*,struct dma_fence*,int) ;
 int amdgpu_bo_is_amdgpu_bo (struct ttm_buffer_object*) ;
 int amdgpu_fill_buffer (struct amdgpu_bo*,int ,int ,struct dma_fence**) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_resv_lock (int ,int *) ;
 int dma_resv_unlock (int ) ;
 struct amdgpu_bo* ttm_to_amdgpu_bo (struct ttm_buffer_object*) ;

void amdgpu_bo_release_notify(struct ttm_buffer_object *bo)
{
 struct dma_fence *fence = ((void*)0);
 struct amdgpu_bo *abo;
 int r;

 if (!amdgpu_bo_is_amdgpu_bo(bo))
  return;

 abo = ttm_to_amdgpu_bo(bo);

 if (abo->kfd_bo)
  amdgpu_amdkfd_unreserve_memory_limit(abo);

 if (bo->mem.mem_type != TTM_PL_VRAM || !bo->mem.mm_node ||
     !(abo->flags & AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE))
  return;

 dma_resv_lock(bo->base.resv, ((void*)0));

 r = amdgpu_fill_buffer(abo, AMDGPU_POISON, bo->base.resv, &fence);
 if (!WARN_ON(r)) {
  amdgpu_bo_fence(abo, fence, 0);
  dma_fence_put(fence);
 }

 dma_resv_unlock(bo->base.resv);
}
