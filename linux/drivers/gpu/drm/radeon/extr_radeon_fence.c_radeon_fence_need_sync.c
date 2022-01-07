
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_fence_driver {scalar_t__* sync_seq; } ;
struct radeon_fence {int ring; scalar_t__ seq; TYPE_1__* rdev; } ;
struct TYPE_2__ {struct radeon_fence_driver* fence_drv; } ;



bool radeon_fence_need_sync(struct radeon_fence *fence, int dst_ring)
{
 struct radeon_fence_driver *fdrv;

 if (!fence) {
  return 0;
 }

 if (fence->ring == dst_ring) {
  return 0;
 }


 fdrv = &fence->rdev->fence_drv[dst_ring];
 if (fence->seq <= fdrv->sync_seq[fence->ring]) {
  return 0;
 }

 return 1;
}
