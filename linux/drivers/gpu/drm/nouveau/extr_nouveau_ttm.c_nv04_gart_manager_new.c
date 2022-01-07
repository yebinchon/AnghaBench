
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_place {int dummy; } ;
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {int num_pages; int start; int * mm_node; } ;
struct ttm_buffer_object {int bdev; } ;
struct nouveau_mem {TYPE_3__* vma; TYPE_2__* cli; } ;
struct nouveau_drm {int master; } ;
struct nouveau_bo {int comp; int kind; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_4__ {int vmm; } ;
struct TYPE_5__ {TYPE_1__ vmm; } ;


 int ENOSPC ;
 int PAGE_SHIFT ;
 int PTES ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 struct nouveau_bo* nouveau_bo (struct ttm_buffer_object*) ;
 struct nouveau_mem* nouveau_mem (struct ttm_mem_reg*) ;
 int nouveau_mem_del (struct ttm_mem_reg*) ;
 int nouveau_mem_new (int *,int ,int ,struct ttm_mem_reg*) ;
 int nvif_vmm_get (int *,int ,int,int,int ,int,TYPE_3__*) ;

__attribute__((used)) static int
nv04_gart_manager_new(struct ttm_mem_type_manager *man,
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

 ret = nvif_vmm_get(&mem->cli->vmm.vmm, PTES, 0, 12, 0,
      reg->num_pages << PAGE_SHIFT, &mem->vma[0]);
 if (ret) {
  nouveau_mem_del(reg);
  if (ret == -ENOSPC) {
   reg->mm_node = ((void*)0);
   return 0;
  }
  return ret;
 }

 reg->start = mem->vma[0].addr >> PAGE_SHIFT;
 return 0;
}
