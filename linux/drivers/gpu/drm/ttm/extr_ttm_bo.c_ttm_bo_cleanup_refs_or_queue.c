
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int _resv; int * resv; } ;
struct TYPE_3__ {int placement; } ;
struct ttm_buffer_object {int ddestroy; int list_kref; TYPE_2__ base; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int lru_lock; } ;
struct ttm_bo_device {int wq; int ddestroy; struct ttm_bo_global* glob; } ;


 int EBUSY ;
 int HZ ;
 int TTM_PL_FLAG_NO_EVICT ;
 scalar_t__ dma_resv_test_signaled_rcu (int *,int) ;
 scalar_t__ dma_resv_trylock (int *) ;
 int dma_resv_unlock (int *) ;
 int dma_resv_wait_timeout_rcu (int *,int,int,int) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_add_to_lru (struct ttm_buffer_object*) ;
 int ttm_bo_cleanup_memtype_use (struct ttm_buffer_object*) ;
 int ttm_bo_del_from_lru (struct ttm_buffer_object*) ;
 int ttm_bo_flush_all_fences (struct ttm_buffer_object*) ;
 int ttm_bo_individualize_resv (struct ttm_buffer_object*) ;

__attribute__((used)) static void ttm_bo_cleanup_refs_or_queue(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_bo_global *glob = bdev->glob;
 int ret;

 ret = ttm_bo_individualize_resv(bo);
 if (ret) {



  dma_resv_wait_timeout_rcu(bo->base.resv, 1, 0,
          30 * HZ);
  spin_lock(&glob->lru_lock);
  goto error;
 }

 spin_lock(&glob->lru_lock);
 ret = dma_resv_trylock(bo->base.resv) ? 0 : -EBUSY;
 if (!ret) {
  if (dma_resv_test_signaled_rcu(&bo->base._resv, 1)) {
   ttm_bo_del_from_lru(bo);
   spin_unlock(&glob->lru_lock);
   if (bo->base.resv != &bo->base._resv)
    dma_resv_unlock(&bo->base._resv);

   ttm_bo_cleanup_memtype_use(bo);
   dma_resv_unlock(bo->base.resv);
   return;
  }

  ttm_bo_flush_all_fences(bo);






  if (bo->mem.placement & TTM_PL_FLAG_NO_EVICT) {
   bo->mem.placement &= ~TTM_PL_FLAG_NO_EVICT;
   ttm_bo_add_to_lru(bo);
  }

  dma_resv_unlock(bo->base.resv);
 }
 if (bo->base.resv != &bo->base._resv)
  dma_resv_unlock(&bo->base._resv);

error:
 kref_get(&bo->list_kref);
 list_add_tail(&bo->ddestroy, &bdev->ddestroy);
 spin_unlock(&glob->lru_lock);

 schedule_delayed_work(&bdev->wq,
         ((HZ / 100) < 1) ? 1 : HZ / 100);
}
