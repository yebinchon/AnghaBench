
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_plane {struct drm_framebuffer* old_fb; struct drm_framebuffer* fb; struct drm_crtc* crtc; TYPE_1__* funcs; int dev; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef int int32_t ;
struct TYPE_2__ {int (* disable_plane ) (struct drm_plane*,struct drm_modeset_acquire_ctx*) ;int (* update_plane ) (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int ,int ,int ,int ,int ,int ,int ,int ,struct drm_modeset_acquire_ctx*) ;} ;


 int WARN_ON (int ) ;
 int __setplane_check (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int drm_drv_uses_atomic_modeset (int ) ;
 int drm_framebuffer_get (struct drm_framebuffer*) ;
 int drm_framebuffer_put (struct drm_framebuffer*) ;
 int stub1 (struct drm_plane*,struct drm_modeset_acquire_ctx*) ;
 int stub2 (struct drm_plane*,struct drm_crtc*,struct drm_framebuffer*,int ,int ,int ,int ,int ,int ,int ,int ,struct drm_modeset_acquire_ctx*) ;

__attribute__((used)) static int __setplane_internal(struct drm_plane *plane,
          struct drm_crtc *crtc,
          struct drm_framebuffer *fb,
          int32_t crtc_x, int32_t crtc_y,
          uint32_t crtc_w, uint32_t crtc_h,

          uint32_t src_x, uint32_t src_y,
          uint32_t src_w, uint32_t src_h,
          struct drm_modeset_acquire_ctx *ctx)
{
 int ret = 0;

 WARN_ON(drm_drv_uses_atomic_modeset(plane->dev));


 if (!fb) {
  plane->old_fb = plane->fb;
  ret = plane->funcs->disable_plane(plane, ctx);
  if (!ret) {
   plane->crtc = ((void*)0);
   plane->fb = ((void*)0);
  } else {
   plane->old_fb = ((void*)0);
  }
  goto out;
 }

 ret = __setplane_check(plane, crtc, fb,
          crtc_x, crtc_y, crtc_w, crtc_h,
          src_x, src_y, src_w, src_h);
 if (ret)
  goto out;

 plane->old_fb = plane->fb;
 ret = plane->funcs->update_plane(plane, crtc, fb,
      crtc_x, crtc_y, crtc_w, crtc_h,
      src_x, src_y, src_w, src_h, ctx);
 if (!ret) {
  plane->crtc = crtc;
  plane->fb = fb;
  drm_framebuffer_get(plane->fb);
 } else {
  plane->old_fb = ((void*)0);
 }

out:
 if (plane->old_fb)
  drm_framebuffer_put(plane->old_fb);
 plane->old_fb = ((void*)0);

 return ret;
}
