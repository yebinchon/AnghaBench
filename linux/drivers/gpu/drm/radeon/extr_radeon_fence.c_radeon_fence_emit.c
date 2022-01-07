
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct radeon_fence {int ring; int is_vm_update; scalar_t__ seq; int base; struct radeon_device* rdev; } ;
struct TYPE_4__ {int lock; } ;
struct radeon_device {int ddev; scalar_t__ fence_context; TYPE_2__ fence_queue; TYPE_1__* fence_drv; } ;
struct TYPE_3__ {scalar_t__* sync_seq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_fence_init (int *,int *,int *,scalar_t__,scalar_t__) ;
 struct radeon_fence* kmalloc (int,int ) ;
 int radeon_fence_ops ;
 int radeon_fence_ring_emit (struct radeon_device*,int,struct radeon_fence*) ;
 int radeon_fence_schedule_check (struct radeon_device*,int) ;
 int trace_radeon_fence_emit (int ,int,scalar_t__) ;

int radeon_fence_emit(struct radeon_device *rdev,
        struct radeon_fence **fence,
        int ring)
{
 u64 seq;


 *fence = kmalloc(sizeof(struct radeon_fence), GFP_KERNEL);
 if ((*fence) == ((void*)0)) {
  return -ENOMEM;
 }
 (*fence)->rdev = rdev;
 (*fence)->seq = seq = ++rdev->fence_drv[ring].sync_seq[ring];
 (*fence)->ring = ring;
 (*fence)->is_vm_update = 0;
 dma_fence_init(&(*fence)->base, &radeon_fence_ops,
         &rdev->fence_queue.lock,
         rdev->fence_context + ring,
         seq);
 radeon_fence_ring_emit(rdev, ring, *fence);
 trace_radeon_fence_emit(rdev->ddev, ring, (*fence)->seq);
 radeon_fence_schedule_check(rdev, ring);
 return 0;
}
