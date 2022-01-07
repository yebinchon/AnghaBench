
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbox_private {int ddev; } ;
struct vbox_framebuffer {int base; struct drm_gem_object* obj; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int drm_framebuffer_init (int *,int *,int *) ;
 int drm_helper_mode_fill_fb_struct (int *,int *,struct drm_mode_fb_cmd2 const*) ;
 int vbox_fb_funcs ;

int vbox_framebuffer_init(struct vbox_private *vbox,
     struct vbox_framebuffer *vbox_fb,
     const struct drm_mode_fb_cmd2 *mode_cmd,
     struct drm_gem_object *obj)
{
 int ret;

 drm_helper_mode_fill_fb_struct(&vbox->ddev, &vbox_fb->base, mode_cmd);
 vbox_fb->obj = obj;
 ret = drm_framebuffer_init(&vbox->ddev, &vbox_fb->base, &vbox_fb_funcs);
 if (ret) {
  DRM_ERROR("framebuffer init failed %d\n", ret);
  return ret;
 }

 return 0;
}
