
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_mem_type_manager {int dummy; } ;
struct qxl_device {int dummy; } ;
struct TYPE_6__ {size_t mem_type; } ;
struct TYPE_4__ {TYPE_3__ mem; TYPE_2__* bdev; } ;
struct qxl_bo {TYPE_1__ tbo; } ;
struct TYPE_5__ {struct ttm_mem_type_manager* man; } ;


 size_t TTM_PL_PRIV ;
 size_t TTM_PL_VRAM ;
 int io_mapping_unmap_atomic (void*) ;
 int qxl_bo_kunmap (struct qxl_bo*) ;
 int ttm_mem_io_free (TYPE_2__*,TYPE_3__*) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;

void qxl_bo_kunmap_atomic_page(struct qxl_device *qdev,
          struct qxl_bo *bo, void *pmap)
{
 struct ttm_mem_type_manager *man = &bo->tbo.bdev->man[bo->tbo.mem.mem_type];

 if ((bo->tbo.mem.mem_type != TTM_PL_VRAM) &&
     (bo->tbo.mem.mem_type != TTM_PL_PRIV))
  goto fallback;

 io_mapping_unmap_atomic(pmap);

 (void) ttm_mem_io_lock(man, 0);
 ttm_mem_io_free(bo->tbo.bdev, &bo->tbo.mem);
 ttm_mem_io_unlock(man);
 return;
 fallback:
 qxl_bo_kunmap(bo);
}
