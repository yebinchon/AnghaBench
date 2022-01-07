
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int base; int ring; int seq; int rdev; } ;


 int DMA_FENCE_TRACE (int *,char*) ;
 int dma_fence_signal (int *) ;
 scalar_t__ radeon_fence_seq_signaled (int ,int ,int ) ;

bool radeon_fence_signaled(struct radeon_fence *fence)
{
 if (!fence)
  return 1;

 if (radeon_fence_seq_signaled(fence->rdev, fence->seq, fence->ring)) {
  int ret;

  ret = dma_fence_signal(&fence->base);
  if (!ret)
   DMA_FENCE_TRACE(&fence->base, "signaled from radeon_fence_signaled\n");
  return 1;
 }
 return 0;
}
