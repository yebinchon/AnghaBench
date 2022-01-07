
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_gem_object {int dummy; } ;
struct udl_framebuffer {int base; struct udl_gem_object* obj; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_framebuffer_init (struct drm_device*,int *,int *) ;
 int drm_helper_mode_fill_fb_struct (struct drm_device*,int *,struct drm_mode_fb_cmd2 const*) ;
 int udlfb_funcs ;

__attribute__((used)) static int
udl_framebuffer_init(struct drm_device *dev,
       struct udl_framebuffer *ufb,
       const struct drm_mode_fb_cmd2 *mode_cmd,
       struct udl_gem_object *obj)
{
 int ret;

 ufb->obj = obj;
 drm_helper_mode_fill_fb_struct(dev, &ufb->base, mode_cmd);
 ret = drm_framebuffer_init(dev, &ufb->base, &udlfb_funcs);
 return ret;
}
