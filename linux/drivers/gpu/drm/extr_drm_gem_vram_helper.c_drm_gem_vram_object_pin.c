
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_vram_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 struct drm_gem_vram_object* drm_gem_vram_of_gem (struct drm_gem_object*) ;
 int drm_gem_vram_pin (struct drm_gem_vram_object*,int ) ;

__attribute__((used)) static int drm_gem_vram_object_pin(struct drm_gem_object *gem)
{
 struct drm_gem_vram_object *gbo = drm_gem_vram_of_gem(gem);
 return drm_gem_vram_pin(gbo, 0);
}
