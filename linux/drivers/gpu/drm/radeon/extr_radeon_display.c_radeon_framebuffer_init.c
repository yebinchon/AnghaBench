
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {struct drm_gem_object** obj; } ;
struct drm_device {int dummy; } ;


 int drm_framebuffer_init (struct drm_device*,struct drm_framebuffer*,int *) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,struct drm_framebuffer*,struct drm_mode_fb_cmd2 const*) ;
 int radeon_fb_funcs ;

int
radeon_framebuffer_init(struct drm_device *dev,
   struct drm_framebuffer *fb,
   const struct drm_mode_fb_cmd2 *mode_cmd,
   struct drm_gem_object *obj)
{
 int ret;
 fb->obj[0] = obj;
 drm_helper_mode_fill_fb_struct(dev, fb, mode_cmd);
 ret = drm_framebuffer_init(dev, fb, &radeon_fb_funcs);
 if (ret) {
  fb->obj[0] = ((void*)0);
  return ret;
 }
 return 0;
}
