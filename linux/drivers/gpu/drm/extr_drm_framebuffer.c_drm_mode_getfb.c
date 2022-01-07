
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_mode_fb_cmd {int bpp; scalar_t__ handle; int pitch; int depth; int width; int height; int fb_id; } ;
struct drm_framebuffer {TYPE_2__* funcs; int * pitches; TYPE_1__* format; int width; int height; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int (* create_handle ) (struct drm_framebuffer*,struct drm_file*,scalar_t__*) ;} ;
struct TYPE_3__ {int num_planes; int* cpp; int depth; } ;


 int CAP_SYS_ADMIN ;
 int DRIVER_MODESET ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int capable (int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_framebuffer* drm_framebuffer_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_framebuffer_put (struct drm_framebuffer*) ;
 int drm_is_current_master (struct drm_file*) ;
 int stub1 (struct drm_framebuffer*,struct drm_file*,scalar_t__*) ;

int drm_mode_getfb(struct drm_device *dev,
     void *data, struct drm_file *file_priv)
{
 struct drm_mode_fb_cmd *r = data;
 struct drm_framebuffer *fb;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EOPNOTSUPP;

 fb = drm_framebuffer_lookup(dev, file_priv, r->fb_id);
 if (!fb)
  return -ENOENT;


 if (fb->format->num_planes > 1) {
  ret = -EINVAL;
  goto out;
 }

 if (!fb->funcs->create_handle) {
  ret = -ENODEV;
  goto out;
 }

 r->height = fb->height;
 r->width = fb->width;
 r->depth = fb->format->depth;
 r->bpp = fb->format->cpp[0] * 8;
 r->pitch = fb->pitches[0];






 if (!drm_is_current_master(file_priv) && !capable(CAP_SYS_ADMIN)) {
  r->handle = 0;
  ret = 0;
  goto out;
 }

 ret = fb->funcs->create_handle(fb, file_priv, &r->handle);

out:
 drm_framebuffer_put(fb);

 return ret;
}
