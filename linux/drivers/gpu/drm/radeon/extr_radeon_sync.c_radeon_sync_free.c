
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_sync {int * semaphores; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;


 unsigned int RADEON_NUM_SYNCS ;
 int radeon_semaphore_free (struct radeon_device*,int *,struct radeon_fence*) ;

void radeon_sync_free(struct radeon_device *rdev,
        struct radeon_sync *sync,
        struct radeon_fence *fence)
{
 unsigned i;

 for (i = 0; i < RADEON_NUM_SYNCS; ++i)
  radeon_semaphore_free(rdev, &sync->semaphores[i], fence);
}
