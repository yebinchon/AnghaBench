
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int filp_head; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int WARN (int,char*,int) ;
 int WARN_ON (int) ;
 int atomic_remove_fb (struct drm_framebuffer*) ;
 scalar_t__ drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int drm_framebuffer_put (struct drm_framebuffer*) ;
 int drm_framebuffer_read_refcount (struct drm_framebuffer*) ;
 int legacy_remove_fb (struct drm_framebuffer*) ;
 int list_empty (int *) ;

void drm_framebuffer_remove(struct drm_framebuffer *fb)
{
 struct drm_device *dev;

 if (!fb)
  return;

 dev = fb->dev;

 WARN_ON(!list_empty(&fb->filp_head));
 if (drm_framebuffer_read_refcount(fb) > 1) {
  if (drm_drv_uses_atomic_modeset(dev)) {
   int ret = atomic_remove_fb(fb);
   WARN(ret, "atomic remove_fb failed with %i\n", ret);
  } else
   legacy_remove_fb(fb);
 }

 drm_framebuffer_put(fb);
}
