
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_vram_object {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 scalar_t__ IS_ERR (void*) ;
 void* drm_gem_vram_kmap (struct drm_gem_vram_object*,int,int *) ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (struct drm_gem_object*) ;
 int drm_gem_vram_pin (struct drm_gem_vram_object*,int ) ;
 int drm_gem_vram_unpin (struct drm_gem_vram_object*) ;

__attribute__((used)) static void *drm_gem_vram_object_vmap(struct drm_gem_object *gem)
{
 struct drm_gem_vram_object *gbo = drm_gem_vram_of_gem(gem);
 int ret;
 void *base;

 ret = drm_gem_vram_pin(gbo, 0);
 if (ret)
  return ((void*)0);
 base = drm_gem_vram_kmap(gbo, 1, ((void*)0));
 if (IS_ERR(base)) {
  drm_gem_vram_unpin(gbo);
  return ((void*)0);
 }
 return base;
}
