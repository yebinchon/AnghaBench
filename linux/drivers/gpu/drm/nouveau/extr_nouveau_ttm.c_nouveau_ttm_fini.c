
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {TYPE_1__* func; } ;
struct TYPE_6__ {scalar_t__ mtrr; int bdev; } ;
struct TYPE_5__ {int device; } ;
struct nouveau_drm {TYPE_3__ ttm; TYPE_2__ client; } ;
struct TYPE_4__ {int (* resource_size ) (struct nvkm_device*,int) ;int (* resource_addr ) (struct nvkm_device*,int) ;} ;


 int TTM_PL_TT ;
 int TTM_PL_VRAM ;
 int arch_io_free_memtype_wc (int ,int ) ;
 int arch_phys_wc_del (scalar_t__) ;
 struct nvkm_device* nvxx_device (int *) ;
 int stub1 (struct nvkm_device*,int) ;
 int stub2 (struct nvkm_device*,int) ;
 int ttm_bo_clean_mm (int *,int ) ;
 int ttm_bo_device_release (int *) ;

void
nouveau_ttm_fini(struct nouveau_drm *drm)
{
 struct nvkm_device *device = nvxx_device(&drm->client.device);

 ttm_bo_clean_mm(&drm->ttm.bdev, TTM_PL_VRAM);
 ttm_bo_clean_mm(&drm->ttm.bdev, TTM_PL_TT);

 ttm_bo_device_release(&drm->ttm.bdev);

 arch_phys_wc_del(drm->ttm.mtrr);
 drm->ttm.mtrr = 0;
 arch_io_free_memtype_wc(device->func->resource_addr(device, 1),
    device->func->resource_size(device, 1));

}
