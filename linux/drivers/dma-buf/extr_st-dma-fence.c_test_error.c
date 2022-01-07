
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int dma_fence_get_status (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_set_error (struct dma_fence*,int) ;
 int dma_fence_signal (struct dma_fence*) ;
 struct dma_fence* mock_fence () ;
 int pr_err (char*,...) ;

__attribute__((used)) static int test_error(void *arg)
{
 struct dma_fence *f;
 int err = -EINVAL;

 f = mock_fence();
 if (!f)
  return -ENOMEM;

 dma_fence_set_error(f, -EIO);

 if (dma_fence_get_status(f)) {
  pr_err("Fence unexpectedly has error status before signal\n");
  goto err_free;
 }

 dma_fence_signal(f);
 if (dma_fence_get_status(f) != -EIO) {
  pr_err("Fence not reporting error status, got %d\n",
         dma_fence_get_status(f));
  goto err_free;
 }

 err = 0;
err_free:
 dma_fence_put(f);
 return err;
}
