
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_mem_reg {int dummy; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; } ;
struct nvif_vmm {int dummy; } ;
struct TYPE_6__ {int size; int page; } ;
struct nouveau_mem {int * vma; TYPE_3__ mem; } ;
struct TYPE_4__ {struct nvif_vmm vmm; } ;
struct TYPE_5__ {TYPE_1__ vmm; } ;
struct nouveau_drm {TYPE_2__ client; } ;


 int LAZY ;
 struct nouveau_mem* nouveau_mem (struct ttm_mem_reg*) ;
 int nouveau_mem_map (struct nouveau_mem*,struct nvif_vmm*,int *) ;
 int nvif_vmm_get (struct nvif_vmm*,int ,int,int ,int ,int ,int *) ;
 int nvif_vmm_put (struct nvif_vmm*,int *) ;

__attribute__((used)) static int
nouveau_bo_move_prep(struct nouveau_drm *drm, struct ttm_buffer_object *bo,
       struct ttm_mem_reg *reg)
{
 struct nouveau_mem *old_mem = nouveau_mem(&bo->mem);
 struct nouveau_mem *new_mem = nouveau_mem(reg);
 struct nvif_vmm *vmm = &drm->client.vmm.vmm;
 int ret;

 ret = nvif_vmm_get(vmm, LAZY, 0, old_mem->mem.page, 0,
      old_mem->mem.size, &old_mem->vma[0]);
 if (ret)
  return ret;

 ret = nvif_vmm_get(vmm, LAZY, 0, new_mem->mem.page, 0,
      new_mem->mem.size, &old_mem->vma[1]);
 if (ret)
  goto done;

 ret = nouveau_mem_map(old_mem, vmm, &old_mem->vma[0]);
 if (ret)
  goto done;

 ret = nouveau_mem_map(new_mem, vmm, &old_mem->vma[1]);
done:
 if (ret) {
  nvif_vmm_put(vmm, &old_mem->vma[1]);
  nvif_vmm_put(vmm, &old_mem->vma[0]);
 }
 return 0;
}
