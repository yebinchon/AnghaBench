
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {TYPE_1__* bdev; } ;
struct ttm_bo_global {int lru_lock; } ;
struct TYPE_2__ {struct ttm_bo_global* glob; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_del_from_lru (struct ttm_buffer_object*) ;

void ttm_bo_del_sub_from_lru(struct ttm_buffer_object *bo)
{
 struct ttm_bo_global *glob = bo->bdev->glob;

 spin_lock(&glob->lru_lock);
 ttm_bo_del_from_lru(bo);
 spin_unlock(&glob->lru_lock);
}
