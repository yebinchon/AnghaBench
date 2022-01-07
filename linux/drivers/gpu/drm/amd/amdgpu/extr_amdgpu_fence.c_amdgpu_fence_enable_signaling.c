
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_fence {int dummy; } ;
struct TYPE_2__ {int fallback_timer; } ;
struct amdgpu_ring {int idx; TYPE_1__ fence_drv; } ;
struct amdgpu_fence {int base; struct amdgpu_ring* ring; } ;


 int DMA_FENCE_TRACE (int *,char*,int ) ;
 int amdgpu_fence_schedule_fallback (struct amdgpu_ring*) ;
 int timer_pending (int *) ;
 struct amdgpu_fence* to_amdgpu_fence (struct dma_fence*) ;

__attribute__((used)) static bool amdgpu_fence_enable_signaling(struct dma_fence *f)
{
 struct amdgpu_fence *fence = to_amdgpu_fence(f);
 struct amdgpu_ring *ring = fence->ring;

 if (!timer_pending(&ring->fence_drv.fallback_timer))
  amdgpu_fence_schedule_fallback(ring);

 DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", ring->idx);

 return 1;
}
