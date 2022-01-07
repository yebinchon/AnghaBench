
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct rvt_mregion {int lkey_published; size_t lkey; TYPE_1__* pd; } ;
struct rvt_lkey_table {size_t next; int max; int gen; int lock; int * table; } ;
struct TYPE_4__ {int lkey_table_size; } ;
struct rvt_dev_info {TYPE_2__ dparms; int dma_mr; struct rvt_lkey_table lkey_table; } ;
struct TYPE_3__ {int device; } ;


 int ENOMEM ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_mregion* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct rvt_mregion*) ;
 int rvt_get_mr (struct rvt_mregion*) ;
 int rvt_put_mr (struct rvt_mregion*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rvt_alloc_lkey(struct rvt_mregion *mr, int dma_region)
{
 unsigned long flags;
 u32 r;
 u32 n;
 int ret = 0;
 struct rvt_dev_info *dev = ib_to_rvt(mr->pd->device);
 struct rvt_lkey_table *rkt = &dev->lkey_table;

 rvt_get_mr(mr);
 spin_lock_irqsave(&rkt->lock, flags);


 if (dma_region) {
  struct rvt_mregion *tmr;

  tmr = rcu_access_pointer(dev->dma_mr);
  if (!tmr) {
   mr->lkey_published = 1;

   rcu_assign_pointer(dev->dma_mr, mr);
   rvt_get_mr(mr);
  }
  goto success;
 }


 r = rkt->next;
 n = r;
 for (;;) {
  if (!rcu_access_pointer(rkt->table[r]))
   break;
  r = (r + 1) & (rkt->max - 1);
  if (r == n)
   goto bail;
 }
 rkt->next = (r + 1) & (rkt->max - 1);




 rkt->gen++;



 mr->lkey = (r << (32 - dev->dparms.lkey_table_size)) |
  ((((1 << (24 - dev->dparms.lkey_table_size)) - 1) & rkt->gen)
   << 8);
 if (mr->lkey == 0) {
  mr->lkey |= 1 << 8;
  rkt->gen++;
 }
 mr->lkey_published = 1;

 rcu_assign_pointer(rkt->table[r], mr);
success:
 spin_unlock_irqrestore(&rkt->lock, flags);
out:
 return ret;
bail:
 rvt_put_mr(mr);
 spin_unlock_irqrestore(&rkt->lock, flags);
 ret = -ENOMEM;
 goto out;
}
