
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_placement {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;
struct drm_gem_vram_object {struct ttm_placement placement; } ;


 int TTM_PL_FLAG_SYSTEM ;
 struct drm_gem_vram_object* drm_gem_vram_of_bo (struct ttm_buffer_object*) ;
 int drm_gem_vram_placement (struct drm_gem_vram_object*,int ) ;
 int drm_is_gem_vram (struct ttm_buffer_object*) ;

void drm_gem_vram_bo_driver_evict_flags(struct ttm_buffer_object *bo,
     struct ttm_placement *pl)
{
 struct drm_gem_vram_object *gbo;


 if (!drm_is_gem_vram(bo))
  return;

 gbo = drm_gem_vram_of_bo(bo);
 drm_gem_vram_placement(gbo, TTM_PL_FLAG_SYSTEM);
 *pl = gbo->placement;
}
