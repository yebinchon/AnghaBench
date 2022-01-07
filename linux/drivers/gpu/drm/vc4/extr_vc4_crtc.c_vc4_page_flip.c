
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DRM_MODE_PAGE_FLIP_ASYNC ;
 int drm_atomic_helper_page_flip (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*,int,struct drm_modeset_acquire_ctx*) ;
 int vc4_async_page_flip (struct drm_crtc*,struct drm_framebuffer*,struct drm_pending_vblank_event*,int) ;

__attribute__((used)) static int vc4_page_flip(struct drm_crtc *crtc,
    struct drm_framebuffer *fb,
    struct drm_pending_vblank_event *event,
    uint32_t flags,
    struct drm_modeset_acquire_ctx *ctx)
{
 if (flags & DRM_MODE_PAGE_FLIP_ASYNC)
  return vc4_async_page_flip(crtc, fb, event, flags);
 else
  return drm_atomic_helper_page_flip(crtc, fb, event, flags, ctx);
}
