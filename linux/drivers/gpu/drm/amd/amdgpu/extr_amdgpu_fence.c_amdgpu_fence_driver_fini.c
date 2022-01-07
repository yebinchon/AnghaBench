
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; unsigned int num_fences_mask; int * fences; int fallback_timer; int irq_type; int irq_src; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; int sched; } ;
struct amdgpu_device {struct amdgpu_ring** rings; } ;


 unsigned int AMDGPU_MAX_RINGS ;
 int amdgpu_fence_driver_force_completion (struct amdgpu_ring*) ;
 int amdgpu_fence_wait_empty (struct amdgpu_ring*) ;
 int amdgpu_irq_put (struct amdgpu_device*,int ,int ) ;
 int del_timer_sync (int *) ;
 int dma_fence_put (int ) ;
 int drm_sched_fini (int *) ;
 int kfree (int *) ;

void amdgpu_fence_driver_fini(struct amdgpu_device *adev)
{
 unsigned i, j;
 int r;

 for (i = 0; i < AMDGPU_MAX_RINGS; i++) {
  struct amdgpu_ring *ring = adev->rings[i];

  if (!ring || !ring->fence_drv.initialized)
   continue;
  r = amdgpu_fence_wait_empty(ring);
  if (r) {

   amdgpu_fence_driver_force_completion(ring);
  }
  amdgpu_irq_put(adev, ring->fence_drv.irq_src,
          ring->fence_drv.irq_type);
  drm_sched_fini(&ring->sched);
  del_timer_sync(&ring->fence_drv.fallback_timer);
  for (j = 0; j <= ring->fence_drv.num_fences_mask; ++j)
   dma_fence_put(ring->fence_drv.fences[j]);
  kfree(ring->fence_drv.fences);
  ring->fence_drv.fences = ((void*)0);
  ring->fence_drv.initialized = 0;
 }
}
