
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int flags; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 struct dma_fence* dma_fence_get_rcu (struct dma_fence*) ;
 int dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int dma_resv_test_signaled_single(struct dma_fence *passed_fence)
{
 struct dma_fence *fence, *lfence = passed_fence;
 int ret = 1;

 if (!test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &lfence->flags)) {
  fence = dma_fence_get_rcu(lfence);
  if (!fence)
   return -1;

  ret = !!dma_fence_is_signaled(fence);
  dma_fence_put(fence);
 }
 return ret;
}
