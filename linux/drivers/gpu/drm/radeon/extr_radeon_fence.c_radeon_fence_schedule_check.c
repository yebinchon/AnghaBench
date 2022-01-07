
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int lockup_work; } ;


 int RADEON_FENCE_JIFFIES_TIMEOUT ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void radeon_fence_schedule_check(struct radeon_device *rdev, int ring)
{




 queue_delayed_work(system_power_efficient_wq,
      &rdev->fence_drv[ring].lockup_work,
      RADEON_FENCE_JIFFIES_TIMEOUT);
}
