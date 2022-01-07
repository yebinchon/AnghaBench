
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ttm_mem_type_manager {int dummy; } ;
struct qxl_device {struct io_mapping* surface_mapping; struct io_mapping* vram_mapping; } ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_8__ {size_t mem_type; TYPE_1__ bus; } ;
struct TYPE_6__ {TYPE_4__ mem; TYPE_3__* bdev; } ;
struct qxl_bo {void* kptr; TYPE_2__ tbo; } ;
struct io_mapping {int dummy; } ;
struct TYPE_7__ {struct ttm_mem_type_manager* man; } ;


 int PAGE_SIZE ;
 size_t TTM_PL_PRIV ;
 size_t TTM_PL_VRAM ;
 void* io_mapping_map_atomic_wc (struct io_mapping*,scalar_t__) ;
 int qxl_bo_kmap (struct qxl_bo*,void**) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_reserve (TYPE_3__*,TYPE_4__*) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;

void *qxl_bo_kmap_atomic_page(struct qxl_device *qdev,
         struct qxl_bo *bo, int page_offset)
{
 struct ttm_mem_type_manager *man = &bo->tbo.bdev->man[bo->tbo.mem.mem_type];
 void *rptr;
 int ret;
 struct io_mapping *map;

 if (bo->tbo.mem.mem_type == TTM_PL_VRAM)
  map = qdev->vram_mapping;
 else if (bo->tbo.mem.mem_type == TTM_PL_PRIV)
  map = qdev->surface_mapping;
 else
  goto fallback;

 (void) ttm_mem_io_lock(man, 0);
 ret = ttm_mem_io_reserve(bo->tbo.bdev, &bo->tbo.mem);
 ttm_mem_io_unlock(man);

 return io_mapping_map_atomic_wc(map, bo->tbo.mem.bus.offset + page_offset);
fallback:
 if (bo->kptr) {
  rptr = bo->kptr + (page_offset * PAGE_SIZE);
  return rptr;
 }

 ret = qxl_bo_kmap(bo, &rptr);
 if (ret)
  return ((void*)0);

 rptr += page_offset * PAGE_SIZE;
 return rptr;
}
