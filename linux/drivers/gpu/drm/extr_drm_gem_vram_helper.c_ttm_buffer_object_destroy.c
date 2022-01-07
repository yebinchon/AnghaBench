
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;
struct drm_gem_vram_object {int dummy; } ;


 int drm_gem_vram_destroy (struct drm_gem_vram_object*) ;
 struct drm_gem_vram_object* drm_gem_vram_of_bo (struct ttm_buffer_object*) ;

__attribute__((used)) static void ttm_buffer_object_destroy(struct ttm_buffer_object *bo)
{
 struct drm_gem_vram_object *gbo = drm_gem_vram_of_bo(bo);

 drm_gem_vram_destroy(gbo);
}
