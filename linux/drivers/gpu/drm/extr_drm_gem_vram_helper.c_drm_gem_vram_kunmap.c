
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_kmap_obj {int * virtual; } ;
struct drm_gem_vram_object {struct ttm_bo_kmap_obj kmap; } ;


 int ttm_bo_kunmap (struct ttm_bo_kmap_obj*) ;

void drm_gem_vram_kunmap(struct drm_gem_vram_object *gbo)
{
 struct ttm_bo_kmap_obj *kmap = &gbo->kmap;

 if (!kmap->virtual)
  return;

 ttm_bo_kunmap(kmap);
 kmap->virtual = ((void*)0);
}
