
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {struct dma_fence* fence; } ;
struct dma_fence {int dummy; } ;


 int dma_fence_put (struct dma_fence*) ;

void
drm_atomic_set_fence_for_plane(struct drm_plane_state *plane_state,
          struct dma_fence *fence)
{
 if (plane_state->fence) {
  dma_fence_put(fence);
  return;
 }

 plane_state->fence = fence;
}
