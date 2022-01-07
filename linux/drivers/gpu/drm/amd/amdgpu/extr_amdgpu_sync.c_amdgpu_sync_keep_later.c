
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;


 struct dma_fence* dma_fence_get (struct dma_fence*) ;
 scalar_t__ dma_fence_is_later (struct dma_fence*,struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;

__attribute__((used)) static void amdgpu_sync_keep_later(struct dma_fence **keep,
       struct dma_fence *fence)
{
 if (*keep && dma_fence_is_later(*keep, fence))
  return;

 dma_fence_put(*keep);
 *keep = dma_fence_get(fence);
}
