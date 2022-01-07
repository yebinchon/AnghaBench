
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 int dma_fence_get (struct dma_fence*) ;
 int dma_fence_is_signaled (struct dma_fence*) ;

__attribute__((used)) static void add_fence(struct dma_fence **fences,
        int *i, struct dma_fence *fence)
{
 fences[*i] = fence;

 if (!dma_fence_is_signaled(fence)) {
  dma_fence_get(fence);
  (*i)++;
 }
}
