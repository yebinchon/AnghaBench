
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct komeda_fb {int dummy; } ;
struct drm_framebuffer {int * obj; TYPE_1__* format; } ;
struct TYPE_2__ {size_t num_planes; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_put_unlocked (int ) ;
 int kfree (struct komeda_fb*) ;
 struct komeda_fb* to_kfb (struct drm_framebuffer*) ;

__attribute__((used)) static void komeda_fb_destroy(struct drm_framebuffer *fb)
{
 struct komeda_fb *kfb = to_kfb(fb);
 u32 i;

 for (i = 0; i < fb->format->num_planes; i++)
  drm_gem_object_put_unlocked(fb->obj[i]);

 drm_framebuffer_cleanup(fb);
 kfree(kfb);
}
