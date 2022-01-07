
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int * obj; } ;


 int OMAP_BO_TILED ;
 int omap_gem_flags (int ) ;

bool omap_framebuffer_supports_rotation(struct drm_framebuffer *fb)
{
 return omap_gem_flags(fb->obj[0]) & OMAP_BO_TILED;
}
