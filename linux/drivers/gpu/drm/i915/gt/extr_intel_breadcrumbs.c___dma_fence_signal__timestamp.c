
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int flags; int timestamp; } ;
typedef int ktime_t ;


 int DMA_FENCE_FLAG_TIMESTAMP_BIT ;
 int set_bit (int ,int *) ;
 int trace_dma_fence_signaled (struct dma_fence*) ;

__attribute__((used)) static void
__dma_fence_signal__timestamp(struct dma_fence *fence, ktime_t timestamp)
{
 fence->timestamp = timestamp;
 set_bit(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags);
 trace_dma_fence_signaled(fence);
}
