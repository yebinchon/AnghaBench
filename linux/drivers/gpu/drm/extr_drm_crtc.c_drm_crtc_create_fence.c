
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int fence_seqno; int fence_context; int fence_lock; } ;
struct dma_fence {int dummy; } ;


 int GFP_KERNEL ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int ) ;
 int drm_crtc_fence_ops ;
 struct dma_fence* kzalloc (int,int ) ;

struct dma_fence *drm_crtc_create_fence(struct drm_crtc *crtc)
{
 struct dma_fence *fence;

 fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 if (!fence)
  return ((void*)0);

 dma_fence_init(fence, &drm_crtc_fence_ops, &crtc->fence_lock,
         crtc->fence_context, ++crtc->fence_seqno);

 return fence;
}
