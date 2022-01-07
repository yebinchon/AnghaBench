
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int flags; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static bool
__dma_fence_signal(struct dma_fence *fence)
{
 return !test_and_set_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags);
}
