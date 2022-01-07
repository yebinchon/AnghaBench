
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_vram_object {int bo; } ;


 int ttm_bo_put (int *) ;

void drm_gem_vram_put(struct drm_gem_vram_object *gbo)
{
 ttm_bo_put(&gbo->bo);
}
