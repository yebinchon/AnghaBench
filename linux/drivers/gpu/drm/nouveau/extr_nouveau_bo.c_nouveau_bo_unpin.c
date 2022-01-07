
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mem_type; int size; int placement; } ;
struct ttm_buffer_object {TYPE_2__ mem; int bdev; } ;
struct TYPE_3__ {int gart_available; int vram_available; } ;
struct nouveau_drm {TYPE_1__ gem; } ;
struct nouveau_bo {int pin_refcnt; struct ttm_buffer_object bo; } ;




 int WARN_ON_ONCE (int) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 int nouveau_bo_placement_set (struct nouveau_bo*,int ,int ) ;
 int nouveau_bo_validate (struct nouveau_bo*,int,int) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;

int
nouveau_bo_unpin(struct nouveau_bo *nvbo)
{
 struct nouveau_drm *drm = nouveau_bdev(nvbo->bo.bdev);
 struct ttm_buffer_object *bo = &nvbo->bo;
 int ret, ref;

 ret = ttm_bo_reserve(bo, 0, 0, ((void*)0));
 if (ret)
  return ret;

 ref = --nvbo->pin_refcnt;
 WARN_ON_ONCE(ref < 0);
 if (ref)
  goto out;

 nouveau_bo_placement_set(nvbo, bo->mem.placement, 0);

 ret = nouveau_bo_validate(nvbo, 0, 0);
 if (ret == 0) {
  switch (bo->mem.mem_type) {
  case 128:
   drm->gem.vram_available += bo->mem.size;
   break;
  case 129:
   drm->gem.gart_available += bo->mem.size;
   break;
  default:
   break;
  }
 }

out:
 ttm_bo_unreserve(bo);
 return ret;
}
