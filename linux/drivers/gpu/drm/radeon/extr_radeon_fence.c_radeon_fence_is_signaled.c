
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct radeon_fence {unsigned int ring; scalar_t__ seq; struct radeon_device* rdev; } ;
struct radeon_device {TYPE_1__* fence_drv; int exclusive_lock; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int last_seq; } ;


 scalar_t__ atomic64_read (int *) ;
 scalar_t__ down_read_trylock (int *) ;
 int radeon_fence_process (struct radeon_device*,unsigned int) ;
 struct radeon_fence* to_radeon_fence (struct dma_fence*) ;
 int up_read (int *) ;

__attribute__((used)) static bool radeon_fence_is_signaled(struct dma_fence *f)
{
 struct radeon_fence *fence = to_radeon_fence(f);
 struct radeon_device *rdev = fence->rdev;
 unsigned ring = fence->ring;
 u64 seq = fence->seq;

 if (atomic64_read(&rdev->fence_drv[ring].last_seq) >= seq) {
  return 1;
 }

 if (down_read_trylock(&rdev->exclusive_lock)) {
  radeon_fence_process(rdev, ring);
  up_read(&rdev->exclusive_lock);

  if (atomic64_read(&rdev->fence_drv[ring].last_seq) >= seq) {
   return 1;
  }
 }
 return 0;
}
