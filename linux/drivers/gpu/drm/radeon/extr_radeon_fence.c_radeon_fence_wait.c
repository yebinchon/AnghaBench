
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int dummy; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 long radeon_fence_wait_timeout (struct radeon_fence*,int,int ) ;

int radeon_fence_wait(struct radeon_fence *fence, bool intr)
{
 long r = radeon_fence_wait_timeout(fence, intr, MAX_SCHEDULE_TIMEOUT);
 if (r > 0) {
  return 0;
 } else {
  return r;
 }
}
