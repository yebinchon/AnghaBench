
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;


 struct drm_gem_object* drm_gem_fb_get_obj (struct drm_framebuffer*,int) ;

struct drm_gem_object *msm_framebuffer_bo(struct drm_framebuffer *fb, int plane)
{
 return drm_gem_fb_get_obj(fb, plane);
}
