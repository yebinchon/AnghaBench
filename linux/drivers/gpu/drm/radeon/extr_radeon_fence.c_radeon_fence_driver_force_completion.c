
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int lockup_work; int * sync_seq; scalar_t__ initialized; } ;


 int cancel_delayed_work_sync (int *) ;
 int radeon_fence_write (struct radeon_device*,int ,int) ;

void radeon_fence_driver_force_completion(struct radeon_device *rdev, int ring)
{
 if (rdev->fence_drv[ring].initialized) {
  radeon_fence_write(rdev, rdev->fence_drv[ring].sync_seq[ring], ring);
  cancel_delayed_work_sync(&rdev->fence_drv[ring].lockup_work);
 }
}
