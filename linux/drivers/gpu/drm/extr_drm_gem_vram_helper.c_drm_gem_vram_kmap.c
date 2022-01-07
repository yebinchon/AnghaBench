
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_bo_kmap_obj {void* virtual; } ;
struct TYPE_2__ {int num_pages; } ;
struct drm_gem_vram_object {TYPE_1__ bo; struct ttm_bo_kmap_obj kmap; } ;


 void* ERR_PTR (int) ;
 int ttm_bo_kmap (TYPE_1__*,int ,int ,struct ttm_bo_kmap_obj*) ;
 void* ttm_kmap_obj_virtual (struct ttm_bo_kmap_obj*,int*) ;

void *drm_gem_vram_kmap(struct drm_gem_vram_object *gbo, bool map,
   bool *is_iomem)
{
 int ret;
 struct ttm_bo_kmap_obj *kmap = &gbo->kmap;

 if (kmap->virtual || !map)
  goto out;

 ret = ttm_bo_kmap(&gbo->bo, 0, gbo->bo.num_pages, kmap);
 if (ret)
  return ERR_PTR(ret);

out:
 if (!is_iomem)
  return kmap->virtual;
 if (!kmap->virtual) {
  *is_iomem = 0;
  return ((void*)0);
 }
 return ttm_kmap_obj_virtual(kmap, is_iomem);
}
