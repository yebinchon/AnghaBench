
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdev; } ;
struct qxl_device {TYPE_1__ mman; } ;


 int TTM_PL_PRIV ;
 int ttm_bo_evict_mm (int *,int ) ;

int qxl_surf_evict(struct qxl_device *qdev)
{
 return ttm_bo_evict_mm(&qdev->mman.bdev, TTM_PL_PRIV);
}
