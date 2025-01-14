
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct ttm_mem_type_manager {int size; int * move; } ;
struct drm_sched_rq {int dummy; } ;
struct TYPE_6__ {struct drm_sched_rq* sched_rq; } ;
struct amdgpu_ring {TYPE_2__ sched; } ;
struct TYPE_5__ {struct ttm_mem_type_manager* man; } ;
struct TYPE_8__ {int buffer_funcs_enabled; int entity; struct amdgpu_ring* buffer_funcs_ring; int initialized; TYPE_1__ bdev; } ;
struct TYPE_7__ {int real_vram_size; int visible_vram_size; } ;
struct amdgpu_device {TYPE_4__ mman; TYPE_3__ gmc; scalar_t__ in_gpu_reset; } ;


 int DRM_ERROR (char*,int) ;
 size_t DRM_SCHED_PRIORITY_KERNEL ;
 int PAGE_SHIFT ;
 size_t TTM_PL_VRAM ;
 int dma_fence_put (int *) ;
 int drm_sched_entity_destroy (int *) ;
 int drm_sched_entity_init (int *,struct drm_sched_rq**,int,int *) ;

void amdgpu_ttm_set_buffer_funcs_status(struct amdgpu_device *adev, bool enable)
{
 struct ttm_mem_type_manager *man = &adev->mman.bdev.man[TTM_PL_VRAM];
 uint64_t size;
 int r;

 if (!adev->mman.initialized || adev->in_gpu_reset ||
     adev->mman.buffer_funcs_enabled == enable)
  return;

 if (enable) {
  struct amdgpu_ring *ring;
  struct drm_sched_rq *rq;

  ring = adev->mman.buffer_funcs_ring;
  rq = &ring->sched.sched_rq[DRM_SCHED_PRIORITY_KERNEL];
  r = drm_sched_entity_init(&adev->mman.entity, &rq, 1, ((void*)0));
  if (r) {
   DRM_ERROR("Failed setting up TTM BO move entity (%d)\n",
      r);
   return;
  }
 } else {
  drm_sched_entity_destroy(&adev->mman.entity);
  dma_fence_put(man->move);
  man->move = ((void*)0);
 }


 if (enable)
  size = adev->gmc.real_vram_size;
 else
  size = adev->gmc.visible_vram_size;
 man->size = size >> PAGE_SHIFT;
 adev->mman.buffer_funcs_enabled = enable;
}
