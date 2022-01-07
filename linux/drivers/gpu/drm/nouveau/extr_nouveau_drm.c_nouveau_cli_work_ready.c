
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;

__attribute__((used)) static inline bool
nouveau_cli_work_ready(struct dma_fence *fence)
{
 if (!dma_fence_is_signaled(fence))
  return 0;
 dma_fence_put(fence);
 return 1;
}
