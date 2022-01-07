
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_place {int dummy; } ;
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {scalar_t__ start; } ;
struct ttm_buffer_object {int bdev; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_drm {int master; } ;
struct nouveau_bo {int comp; int kind; } ;


 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 struct nouveau_mem* nouveau_mem (struct ttm_mem_reg*) ;
 int nouveau_mem_new (int *,int ,int ,struct ttm_mem_reg*) ;

__attribute__((used)) static int
nouveau_gart_manager_new(struct ttm_mem_type_manager *man,
    struct ttm_buffer_object *bo,
    const struct ttm_place *place,
    struct ttm_mem_reg *reg)
{
 struct nouveau_bo *nvbo = nouveau_bo(bo);
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct nouveau_mem *mem;
 int ret;

 ret = nouveau_mem_new(&drm->master, nvbo->kind, nvbo->comp, reg);
 mem = nouveau_mem(reg);
 if (ret)
  return ret;

 reg->start = 0;
 return 0;
}
