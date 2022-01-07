
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_mem_reg {int num_pages; scalar_t__ mem_type; } ;
struct TYPE_4__ {int resv; } ;
struct ttm_buffer_object {scalar_t__ type; TYPE_1__ base; int bdev; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_copy_mem {scalar_t__ offset; struct ttm_mem_reg* mem; struct ttm_buffer_object* bo; } ;
struct TYPE_5__ {int flags; } ;


 int AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE ;
 int AMDGPU_POISON ;
 int PAGE_SHIFT ;
 scalar_t__ TTM_PL_VRAM ;
 int amdgpu_fill_buffer (TYPE_2__*,int ,int *,struct dma_fence**) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int amdgpu_ttm_copy_mem_to_mem (struct amdgpu_device*,struct amdgpu_copy_mem*,struct amdgpu_copy_mem*,int,int ,struct dma_fence**) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 int ttm_bo_move_accel_cleanup (struct ttm_buffer_object*,struct dma_fence*,int,struct ttm_mem_reg*) ;
 int ttm_bo_pipeline_move (struct ttm_buffer_object*,struct dma_fence*,int,struct ttm_mem_reg*) ;
 scalar_t__ ttm_bo_type_kernel ;
 TYPE_2__* ttm_to_amdgpu_bo (struct ttm_buffer_object*) ;

__attribute__((used)) static int amdgpu_move_blit(struct ttm_buffer_object *bo,
       bool evict, bool no_wait_gpu,
       struct ttm_mem_reg *new_mem,
       struct ttm_mem_reg *old_mem)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->bdev);
 struct amdgpu_copy_mem src, dst;
 struct dma_fence *fence = ((void*)0);
 int r;

 src.bo = bo;
 dst.bo = bo;
 src.mem = old_mem;
 dst.mem = new_mem;
 src.offset = 0;
 dst.offset = 0;

 r = amdgpu_ttm_copy_mem_to_mem(adev, &src, &dst,
           new_mem->num_pages << PAGE_SHIFT,
           bo->base.resv, &fence);
 if (r)
  goto error;


 if (old_mem->mem_type == TTM_PL_VRAM &&
     (ttm_to_amdgpu_bo(bo)->flags &
      AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE)) {
  struct dma_fence *wipe_fence = ((void*)0);

  r = amdgpu_fill_buffer(ttm_to_amdgpu_bo(bo), AMDGPU_POISON,
           ((void*)0), &wipe_fence);
  if (r) {
   goto error;
  } else if (wipe_fence) {
   dma_fence_put(fence);
   fence = wipe_fence;
  }
 }


 if (bo->type == ttm_bo_type_kernel)
  r = ttm_bo_move_accel_cleanup(bo, fence, 1, new_mem);
 else
  r = ttm_bo_pipeline_move(bo, fence, evict, new_mem);
 dma_fence_put(fence);
 return r;

error:
 if (fence)
  dma_fence_wait(fence, 0);
 dma_fence_put(fence);
 return r;
}
