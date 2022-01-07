
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETIME ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_signal (struct dma_fence*) ;
 int dma_fence_wait_timeout (struct dma_fence*,int,int ) ;
 struct dma_fence* mock_fence () ;
 int pr_err (char*) ;

__attribute__((used)) static int test_wait(void *arg)
{
 struct dma_fence *f;
 int err = -EINVAL;

 f = mock_fence();
 if (!f)
  return -ENOMEM;

 if (dma_fence_wait_timeout(f, 0, 0) != -ETIME) {
  pr_err("Wait reported complete before being signaled\n");
  goto err_free;
 }

 dma_fence_signal(f);

 if (dma_fence_wait_timeout(f, 0, 0) != 0) {
  pr_err("Wait reported incomplete after being signaled\n");
  goto err_free;
 }

 err = 0;
err_free:
 dma_fence_signal(f);
 dma_fence_put(f);
 return err;
}
