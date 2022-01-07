
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udl_framebuffer {TYPE_1__* obj; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int base; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_put_unlocked (int *) ;
 int kfree (struct udl_framebuffer*) ;
 struct udl_framebuffer* to_udl_fb (struct drm_framebuffer*) ;

__attribute__((used)) static void udl_user_framebuffer_destroy(struct drm_framebuffer *fb)
{
 struct udl_framebuffer *ufb = to_udl_fb(fb);

 if (ufb->obj)
  drm_gem_object_put_unlocked(&ufb->obj->base);

 drm_framebuffer_cleanup(fb);
 kfree(ufb);
}
