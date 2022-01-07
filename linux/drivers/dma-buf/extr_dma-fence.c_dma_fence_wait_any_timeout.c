
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct dma_fence {int dummy; } ;
struct default_wait_cb {int base; int task; } ;


 long EINVAL ;
 long ENOMEM ;
 long ERESTARTSYS ;
 int GFP_KERNEL ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ WARN_ON (int) ;
 int __set_current_state (int ) ;
 int current ;
 scalar_t__ dma_fence_add_callback (struct dma_fence*,int *,int ) ;
 int dma_fence_default_wait_cb ;
 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_remove_callback (struct dma_fence*,int *) ;
 scalar_t__ dma_fence_test_signaled_any (struct dma_fence**,unsigned int,unsigned int*) ;
 struct default_wait_cb* kcalloc (unsigned int,int,int ) ;
 int kfree (struct default_wait_cb*) ;
 long schedule_timeout (long) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;

signed long
dma_fence_wait_any_timeout(struct dma_fence **fences, uint32_t count,
      bool intr, signed long timeout, uint32_t *idx)
{
 struct default_wait_cb *cb;
 signed long ret = timeout;
 unsigned i;

 if (WARN_ON(!fences || !count || timeout < 0))
  return -EINVAL;

 if (timeout == 0) {
  for (i = 0; i < count; ++i)
   if (dma_fence_is_signaled(fences[i])) {
    if (idx)
     *idx = i;
    return 1;
   }

  return 0;
 }

 cb = kcalloc(count, sizeof(struct default_wait_cb), GFP_KERNEL);
 if (cb == ((void*)0)) {
  ret = -ENOMEM;
  goto err_free_cb;
 }

 for (i = 0; i < count; ++i) {
  struct dma_fence *fence = fences[i];

  cb[i].task = current;
  if (dma_fence_add_callback(fence, &cb[i].base,
        dma_fence_default_wait_cb)) {

   if (idx)
    *idx = i;
   goto fence_rm_cb;
  }
 }

 while (ret > 0) {
  if (intr)
   set_current_state(TASK_INTERRUPTIBLE);
  else
   set_current_state(TASK_UNINTERRUPTIBLE);

  if (dma_fence_test_signaled_any(fences, count, idx))
   break;

  ret = schedule_timeout(ret);

  if (ret > 0 && intr && signal_pending(current))
   ret = -ERESTARTSYS;
 }

 __set_current_state(TASK_RUNNING);

fence_rm_cb:
 while (i-- > 0)
  dma_fence_remove_callback(fences[i], &cb[i].base);

err_free_cb:
 kfree(cb);

 return ret;
}
