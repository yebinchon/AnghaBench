
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_mem_reg {int mem_type; } ;
struct ttm_bo_device {int dummy; } ;
struct TYPE_6__ {int object; } ;
struct nouveau_mem {TYPE_3__ mem; int kind; } ;
struct TYPE_5__ {TYPE_1__* mem; } ;
struct nouveau_drm {TYPE_2__ client; } ;
struct TYPE_4__ {scalar_t__ oclass; } ;


 scalar_t__ NVIF_CLASS_MEM_NV50 ;


 struct nouveau_drm* nouveau_bdev (struct ttm_bo_device*) ;
 struct nouveau_mem* nouveau_mem (struct ttm_mem_reg*) ;
 int nvif_object_unmap_handle (int *) ;

__attribute__((used)) static void
nouveau_ttm_io_mem_free(struct ttm_bo_device *bdev, struct ttm_mem_reg *reg)
{
 struct nouveau_drm *drm = nouveau_bdev(bdev);
 struct nouveau_mem *mem = nouveau_mem(reg);

 if (drm->client.mem->oclass >= NVIF_CLASS_MEM_NV50) {
  switch (reg->mem_type) {
  case 129:
   if (mem->kind)
    nvif_object_unmap_handle(&mem->mem.object);
   break;
  case 128:
   nvif_object_unmap_handle(&mem->mem.object);
   break;
  default:
   break;
  }
 }
}
