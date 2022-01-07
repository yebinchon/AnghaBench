
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_4__ {size_t mem_type; } ;
struct ttm_buffer_object {TYPE_2__ mem; TYPE_1__* bdev; } ;
struct ttm_bo_kmap_obj {int bo_kmap_type; int * page; int * virtual; struct ttm_buffer_object* bo; } ;
struct TYPE_3__ {struct ttm_mem_type_manager* man; } ;


 int BUG () ;
 int iounmap (int *) ;
 int kunmap (int *) ;




 int ttm_mem_io_free (TYPE_1__*,TYPE_2__*) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;
 int vunmap (int *) ;

void ttm_bo_kunmap(struct ttm_bo_kmap_obj *map)
{
 struct ttm_buffer_object *bo = map->bo;
 struct ttm_mem_type_manager *man =
  &bo->bdev->man[bo->mem.mem_type];

 if (!map->virtual)
  return;
 switch (map->bo_kmap_type) {
 case 131:
  iounmap(map->virtual);
  break;
 case 128:
  vunmap(map->virtual);
  break;
 case 130:
  kunmap(map->page);
  break;
 case 129:
  break;
 default:
  BUG();
 }
 (void) ttm_mem_io_lock(man, 0);
 ttm_mem_io_free(map->bo->bdev, &map->bo->mem);
 ttm_mem_io_unlock(man);
 map->virtual = ((void*)0);
 map->page = ((void*)0);
}
