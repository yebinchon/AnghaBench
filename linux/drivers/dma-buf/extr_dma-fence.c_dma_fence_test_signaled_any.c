
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dma_fence {int flags; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool
dma_fence_test_signaled_any(struct dma_fence **fences, uint32_t count,
       uint32_t *idx)
{
 int i;

 for (i = 0; i < count; ++i) {
  struct dma_fence *fence = fences[i];
  if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
   if (idx)
    *idx = i;
   return 1;
  }
 }
 return 0;
}
