
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj {int dummy; } ;
struct dma_fence {int dummy; } ;


 struct dma_fence* dma_fence_get_stub () ;
 int dma_fence_put (struct dma_fence*) ;
 int drm_syncobj_replace_fence (struct drm_syncobj*,struct dma_fence*) ;

__attribute__((used)) static void drm_syncobj_assign_null_handle(struct drm_syncobj *syncobj)
{
 struct dma_fence *fence = dma_fence_get_stub();

 drm_syncobj_replace_fence(syncobj, fence);
 dma_fence_put(fence);
}
