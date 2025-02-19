
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {char const* timeline_name; } ;
struct dma_fence {int dummy; } ;


 struct drm_crtc* fence_to_crtc (struct dma_fence*) ;

__attribute__((used)) static const char *drm_crtc_fence_get_timeline_name(struct dma_fence *fence)
{
 struct drm_crtc *crtc = fence_to_crtc(fence);

 return crtc->timeline_name;
}
