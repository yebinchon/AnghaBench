
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int * obj; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_put_unlocked (int ) ;
 int kfree (struct drm_framebuffer*) ;

void drm_gem_fb_destroy(struct drm_framebuffer *fb)
{
 int i;

 for (i = 0; i < 4; i++)
  drm_gem_object_put_unlocked(fb->obj[i]);

 drm_framebuffer_cleanup(fb);
 kfree(fb);
}
