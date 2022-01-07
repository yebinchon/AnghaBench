
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbox_framebuffer {scalar_t__ obj; } ;
struct drm_framebuffer {int dummy; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_put_unlocked (scalar_t__) ;
 int kfree (struct drm_framebuffer*) ;
 struct vbox_framebuffer* to_vbox_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void vbox_user_framebuffer_destroy(struct drm_framebuffer *fb)
{
 struct vbox_framebuffer *vbox_fb = to_vbox_framebuffer(fb);

 if (vbox_fb->obj)
  drm_gem_object_put_unlocked(vbox_fb->obj);

 drm_framebuffer_cleanup(fb);
 kfree(fb);
}
