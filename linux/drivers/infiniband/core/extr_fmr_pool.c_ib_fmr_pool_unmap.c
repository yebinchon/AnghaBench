
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_pool_fmr {scalar_t__ remap_count; int list; int ref_count; struct ib_fmr_pool* pool; } ;
struct ib_fmr_pool {scalar_t__ max_remaps; scalar_t__ dirty_len; scalar_t__ dirty_watermark; int pool_lock; int work; int worker; int req_ser; int dirty_list; int free_list; } ;


 int atomic_inc (int *) ;
 int kthread_queue_work (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ib_fmr_pool_unmap(struct ib_pool_fmr *fmr)
{
 struct ib_fmr_pool *pool;
 unsigned long flags;

 pool = fmr->pool;

 spin_lock_irqsave(&pool->pool_lock, flags);

 --fmr->ref_count;
 if (!fmr->ref_count) {
  if (fmr->remap_count < pool->max_remaps) {
   list_add_tail(&fmr->list, &pool->free_list);
  } else {
   list_add_tail(&fmr->list, &pool->dirty_list);
   if (++pool->dirty_len >= pool->dirty_watermark) {
    atomic_inc(&pool->req_ser);
    kthread_queue_work(pool->worker, &pool->work);
   }
  }
 }

 spin_unlock_irqrestore(&pool->pool_lock, flags);
}
