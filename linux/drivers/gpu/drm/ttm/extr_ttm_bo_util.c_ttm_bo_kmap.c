
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_4__ {int is_iomem; } ;
struct TYPE_6__ {size_t mem_type; TYPE_1__ bus; } ;
struct ttm_buffer_object {unsigned long num_pages; TYPE_3__ mem; TYPE_2__* bdev; } ;
struct ttm_bo_kmap_obj {struct ttm_buffer_object* bo; int * virtual; } ;
struct TYPE_5__ {struct ttm_mem_type_manager* man; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int ttm_bo_ioremap (struct ttm_buffer_object*,unsigned long,unsigned long,struct ttm_bo_kmap_obj*) ;
 int ttm_bo_kmap_ttm (struct ttm_buffer_object*,unsigned long,unsigned long,struct ttm_bo_kmap_obj*) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_reserve (TYPE_2__*,TYPE_3__*) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;

int ttm_bo_kmap(struct ttm_buffer_object *bo,
  unsigned long start_page, unsigned long num_pages,
  struct ttm_bo_kmap_obj *map)
{
 struct ttm_mem_type_manager *man =
  &bo->bdev->man[bo->mem.mem_type];
 unsigned long offset, size;
 int ret;

 map->virtual = ((void*)0);
 map->bo = bo;
 if (num_pages > bo->num_pages)
  return -EINVAL;
 if (start_page > bo->num_pages)
  return -EINVAL;

 (void) ttm_mem_io_lock(man, 0);
 ret = ttm_mem_io_reserve(bo->bdev, &bo->mem);
 ttm_mem_io_unlock(man);
 if (ret)
  return ret;
 if (!bo->mem.bus.is_iomem) {
  return ttm_bo_kmap_ttm(bo, start_page, num_pages, map);
 } else {
  offset = start_page << PAGE_SHIFT;
  size = num_pages << PAGE_SHIFT;
  return ttm_bo_ioremap(bo, offset, size, map);
 }
}
