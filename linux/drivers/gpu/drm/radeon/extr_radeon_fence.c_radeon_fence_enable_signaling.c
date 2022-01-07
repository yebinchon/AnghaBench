
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int func; int * private; scalar_t__ flags; } ;
struct radeon_fence {size_t ring; scalar_t__ seq; int base; TYPE_2__ fence_wake; struct radeon_device* rdev; } ;
struct radeon_device {int fence_queue; TYPE_1__* fence_drv; int exclusive_lock; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {int delayed_irq; int last_seq; } ;


 int DMA_FENCE_TRACE (int *,char*,size_t) ;
 int __add_wait_queue (int *,TYPE_2__*) ;
 scalar_t__ atomic64_read (int *) ;
 int dma_fence_get (struct dma_fence*) ;
 scalar_t__ down_read_trylock (int *) ;
 scalar_t__ radeon_fence_activity (struct radeon_device*,size_t) ;
 int radeon_fence_check_signaled ;
 int radeon_fence_schedule_check (struct radeon_device*,size_t) ;
 int radeon_irq_kms_sw_irq_get (struct radeon_device*,size_t) ;
 scalar_t__ radeon_irq_kms_sw_irq_get_delayed (struct radeon_device*,size_t) ;
 int radeon_irq_kms_sw_irq_put (struct radeon_device*,size_t) ;
 struct radeon_fence* to_radeon_fence (struct dma_fence*) ;
 int up_read (int *) ;
 int wake_up_all_locked (int *) ;

__attribute__((used)) static bool radeon_fence_enable_signaling(struct dma_fence *f)
{
 struct radeon_fence *fence = to_radeon_fence(f);
 struct radeon_device *rdev = fence->rdev;

 if (atomic64_read(&rdev->fence_drv[fence->ring].last_seq) >= fence->seq)
  return 0;

 if (down_read_trylock(&rdev->exclusive_lock)) {
  radeon_irq_kms_sw_irq_get(rdev, fence->ring);

  if (radeon_fence_activity(rdev, fence->ring))
   wake_up_all_locked(&rdev->fence_queue);


  if (atomic64_read(&rdev->fence_drv[fence->ring].last_seq) >= fence->seq) {
   radeon_irq_kms_sw_irq_put(rdev, fence->ring);
   up_read(&rdev->exclusive_lock);
   return 0;
  }

  up_read(&rdev->exclusive_lock);
 } else {

  if (radeon_irq_kms_sw_irq_get_delayed(rdev, fence->ring))
   rdev->fence_drv[fence->ring].delayed_irq = 1;
  radeon_fence_schedule_check(rdev, fence->ring);
 }

 fence->fence_wake.flags = 0;
 fence->fence_wake.private = ((void*)0);
 fence->fence_wake.func = radeon_fence_check_signaled;
 __add_wait_queue(&rdev->fence_queue, &fence->fence_wake);
 dma_fence_get(f);

 DMA_FENCE_TRACE(&fence->base, "armed on ring %i!\n", fence->ring);
 return 1;
}
