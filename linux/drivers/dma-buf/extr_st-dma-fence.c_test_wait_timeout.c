
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_timer {int f; int timer; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETIME ;
 int del_timer_sync (int *) ;
 int destroy_timer_on_stack (int *) ;
 int dma_fence_put (int ) ;
 int dma_fence_signal (int ) ;
 int dma_fence_wait_timeout (int ,int,int) ;
 scalar_t__ jiffies ;
 int mock_fence () ;
 int mod_timer (int *,scalar_t__) ;
 int pr_err (char*) ;
 int pr_notice (char*) ;
 scalar_t__ timer_pending (int *) ;
 int timer_setup_on_stack (int *,int ,int ) ;
 int wait_timer ;

__attribute__((used)) static int test_wait_timeout(void *arg)
{
 struct wait_timer wt;
 int err = -EINVAL;

 timer_setup_on_stack(&wt.timer, wait_timer, 0);

 wt.f = mock_fence();
 if (!wt.f)
  return -ENOMEM;

 if (dma_fence_wait_timeout(wt.f, 0, 1) != -ETIME) {
  pr_err("Wait reported complete before being signaled\n");
  goto err_free;
 }

 mod_timer(&wt.timer, jiffies + 1);

 if (dma_fence_wait_timeout(wt.f, 0, 2) == -ETIME) {
  if (timer_pending(&wt.timer)) {
   pr_notice("Timer did not fire within the jiffie!\n");
   err = 0;
  } else {
   pr_err("Wait reported incomplete after timeout\n");
  }
  goto err_free;
 }

 err = 0;
err_free:
 del_timer_sync(&wt.timer);
 destroy_timer_on_stack(&wt.timer);
 dma_fence_signal(wt.f);
 dma_fence_put(wt.f);
 return err;
}
