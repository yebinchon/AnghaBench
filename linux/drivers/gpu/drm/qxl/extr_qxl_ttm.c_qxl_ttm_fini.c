
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdev; } ;
struct qxl_device {TYPE_1__ mman; } ;


 int DRM_INFO (char*) ;
 int TTM_PL_PRIV ;
 int TTM_PL_VRAM ;
 int ttm_bo_clean_mm (int *,int ) ;
 int ttm_bo_device_release (int *) ;

void qxl_ttm_fini(struct qxl_device *qdev)
{
 ttm_bo_clean_mm(&qdev->mman.bdev, TTM_PL_VRAM);
 ttm_bo_clean_mm(&qdev->mman.bdev, TTM_PL_PRIV);
 ttm_bo_device_release(&qdev->mman.bdev);
 DRM_INFO("qxl: ttm finalized\n");
}
