
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {struct drm_gem_object** obj; } ;



struct drm_gem_object *drm_gem_fb_get_obj(struct drm_framebuffer *fb,
       unsigned int plane)
{
 if (plane >= 4)
  return ((void*)0);

 return fb->obj[plane];
}
