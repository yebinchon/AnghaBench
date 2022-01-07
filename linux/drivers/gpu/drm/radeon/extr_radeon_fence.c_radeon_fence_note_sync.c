
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_fence_driver {int * sync_seq; } ;
struct radeon_fence {int ring; TYPE_1__* rdev; } ;
struct TYPE_2__ {struct radeon_fence_driver* fence_drv; } ;


 unsigned int RADEON_NUM_RINGS ;
 int max (int ,int ) ;

void radeon_fence_note_sync(struct radeon_fence *fence, int dst_ring)
{
 struct radeon_fence_driver *dst, *src;
 unsigned i;

 if (!fence) {
  return;
 }

 if (fence->ring == dst_ring) {
  return;
 }


 src = &fence->rdev->fence_drv[fence->ring];
 dst = &fence->rdev->fence_drv[dst_ring];
 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  if (i == dst_ring) {
   continue;
  }
  dst->sync_seq[i] = max(dst->sync_seq[i], src->sync_seq[i]);
 }
}
