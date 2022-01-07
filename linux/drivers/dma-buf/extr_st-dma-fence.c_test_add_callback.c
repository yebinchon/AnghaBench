
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_cb {int seen; int cb; } ;
struct dma_fence {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ dma_fence_add_callback (struct dma_fence*,int *,int ) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_signal (struct dma_fence*) ;
 struct dma_fence* mock_fence () ;
 int pr_err (char*) ;
 int simple_callback ;

__attribute__((used)) static int test_add_callback(void *arg)
{
 struct simple_cb cb = {};
 struct dma_fence *f;
 int err = -EINVAL;

 f = mock_fence();
 if (!f)
  return -ENOMEM;

 if (dma_fence_add_callback(f, &cb.cb, simple_callback)) {
  pr_err("Failed to add callback, fence already signaled!\n");
  goto err_free;
 }

 dma_fence_signal(f);
 if (!cb.seen) {
  pr_err("Callback failed!\n");
  goto err_free;
 }

 err = 0;
err_free:
 dma_fence_put(f);
 return err;
}
