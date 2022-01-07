
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {int list_kref; int lru; int swap; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* del_from_lru_notify ) (struct ttm_buffer_object*) ;} ;


 int kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int stub1 (struct ttm_buffer_object*) ;
 int ttm_bo_ref_bug ;

void ttm_bo_del_from_lru(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 bool notify = 0;

 if (!list_empty(&bo->swap)) {
  list_del_init(&bo->swap);
  kref_put(&bo->list_kref, ttm_bo_ref_bug);
  notify = 1;
 }
 if (!list_empty(&bo->lru)) {
  list_del_init(&bo->lru);
  kref_put(&bo->list_kref, ttm_bo_ref_bug);
  notify = 1;
 }

 if (notify && bdev->driver->del_from_lru_notify)
  bdev->driver->del_from_lru_notify(bo);
}
