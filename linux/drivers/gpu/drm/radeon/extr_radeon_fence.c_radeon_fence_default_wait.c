
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_wait_cb {int base; int task; } ;
struct radeon_fence {struct radeon_device* rdev; } ;
struct radeon_device {scalar_t__ needs_reset; } ;
struct dma_fence {int dummy; } ;


 long EDEADLK ;
 long ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 scalar_t__ dma_fence_add_callback (struct dma_fence*,int *,int ) ;
 int dma_fence_remove_callback (struct dma_fence*,int *) ;
 int radeon_fence_wait_cb ;
 scalar_t__ radeon_test_signaled (struct radeon_fence*) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 struct radeon_fence* to_radeon_fence (struct dma_fence*) ;

__attribute__((used)) static signed long radeon_fence_default_wait(struct dma_fence *f, bool intr,
          signed long t)
{
 struct radeon_fence *fence = to_radeon_fence(f);
 struct radeon_device *rdev = fence->rdev;
 struct radeon_wait_cb cb;

 cb.task = current;

 if (dma_fence_add_callback(f, &cb.base, radeon_fence_wait_cb))
  return t;

 while (t > 0) {
  if (intr)
   set_current_state(TASK_INTERRUPTIBLE);
  else
   set_current_state(TASK_UNINTERRUPTIBLE);





  if (radeon_test_signaled(fence))
   break;

  if (rdev->needs_reset) {
   t = -EDEADLK;
   break;
  }

  t = schedule_timeout(t);

  if (t > 0 && intr && signal_pending(current))
   t = -ERESTARTSYS;
 }

 __set_current_state(TASK_RUNNING);
 dma_fence_remove_callback(f, &cb.base);

 return t;
}
