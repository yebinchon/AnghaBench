
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int timeout; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 int jiffies ;
 int nouveau_fence_done (struct nouveau_fence*) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after_eq (int ,int ) ;

__attribute__((used)) static int
nouveau_fence_wait_busy(struct nouveau_fence *fence, bool intr)
{
 int ret = 0;

 while (!nouveau_fence_done(fence)) {
  if (time_after_eq(jiffies, fence->timeout)) {
   ret = -EBUSY;
   break;
  }

  __set_current_state(intr ?
        TASK_INTERRUPTIBLE :
        TASK_UNINTERRUPTIBLE);

  if (intr && signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
 }

 __set_current_state(TASK_RUNNING);
 return ret;
}
