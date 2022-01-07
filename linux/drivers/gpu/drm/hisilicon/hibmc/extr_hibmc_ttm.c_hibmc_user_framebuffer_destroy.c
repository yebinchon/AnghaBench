
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_framebuffer {int obj; } ;
struct drm_framebuffer {int dummy; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_put_unlocked (int ) ;
 int kfree (struct hibmc_framebuffer*) ;
 struct hibmc_framebuffer* to_hibmc_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void hibmc_user_framebuffer_destroy(struct drm_framebuffer *fb)
{
 struct hibmc_framebuffer *hibmc_fb = to_hibmc_framebuffer(fb);

 drm_gem_object_put_unlocked(hibmc_fb->obj);
 drm_framebuffer_cleanup(fb);
 kfree(hibmc_fb);
}
