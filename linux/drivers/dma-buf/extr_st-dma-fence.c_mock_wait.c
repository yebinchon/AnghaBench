
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_cb {int cb; int task; } ;
struct dma_fence {int flags; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 long ERESTARTSYS ;
 long ETIME ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int current ;
 scalar_t__ dma_fence_add_callback (struct dma_fence*,int *,int ) ;
 int dma_fence_remove_callback (struct dma_fence*,int *) ;
 int mock_wakeup ;
 long schedule_timeout (long) ;
 int set_current_state (int const) ;
 scalar_t__ signal_pending_state (int const,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static long mock_wait(struct dma_fence *f, bool intr, long timeout)
{
 const int state = intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE;
 struct wait_cb cb = { .task = current };

 if (dma_fence_add_callback(f, &cb.cb, mock_wakeup))
  return timeout;

 while (timeout) {
  set_current_state(state);

  if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &f->flags))
   break;

  if (signal_pending_state(state, current))
   break;

  timeout = schedule_timeout(timeout);
 }
 __set_current_state(TASK_RUNNING);

 if (!dma_fence_remove_callback(f, &cb.cb))
  return timeout;

 if (signal_pending_state(state, current))
  return -ERESTARTSYS;

 return -ETIME;
}
