
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int fence_queue; } ;


 scalar_t__ radeon_fence_activity (struct radeon_device*,int) ;
 int wake_up_all (int *) ;

void radeon_fence_process(struct radeon_device *rdev, int ring)
{
 if (radeon_fence_activity(rdev, ring))
  wake_up_all(&rdev->fence_queue);
}
