
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_plane_state {int src_w; int src_h; int crtc_w; int crtc_h; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;

__attribute__((used)) static int ltdc_plane_atomic_check(struct drm_plane *plane,
       struct drm_plane_state *state)
{
 struct drm_framebuffer *fb = state->fb;
 u32 src_w, src_h;

 DRM_DEBUG_DRIVER("\n");

 if (!fb)
  return 0;


 src_w = state->src_w >> 16;
 src_h = state->src_h >> 16;


 if (src_w != state->crtc_w || src_h != state->crtc_h) {
  DRM_ERROR("Scaling is not supported");
  return -EINVAL;
 }

 return 0;
}
