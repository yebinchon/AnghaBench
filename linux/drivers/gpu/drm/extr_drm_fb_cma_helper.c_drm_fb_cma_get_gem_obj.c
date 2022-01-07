
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_gem_cma_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;


 struct drm_gem_object* drm_gem_fb_get_obj (struct drm_framebuffer*,unsigned int) ;
 struct drm_gem_cma_object* to_drm_gem_cma_obj (struct drm_gem_object*) ;

struct drm_gem_cma_object *drm_fb_cma_get_gem_obj(struct drm_framebuffer *fb,
        unsigned int plane)
{
 struct drm_gem_object *gem;

 gem = drm_gem_fb_get_obj(fb, plane);
 if (!gem)
  return ((void*)0);

 return to_drm_gem_cma_obj(gem);
}
