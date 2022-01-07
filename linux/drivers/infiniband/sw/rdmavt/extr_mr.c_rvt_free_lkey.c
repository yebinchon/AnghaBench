
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rvt_mregion {int lkey; int refcount; scalar_t__ lkey_published; TYPE_1__* pd; } ;
struct rvt_lkey_table {int lock; int * table; } ;
struct TYPE_4__ {int lkey_table_size; } ;
struct rvt_dev_info {TYPE_2__ dparms; int dma_mr; struct rvt_lkey_table lkey_table; } ;
struct TYPE_3__ {int device; } ;


 struct rvt_dev_info* ib_to_rvt (int ) ;
 int percpu_ref_kill (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int rvt_put_mr (struct rvt_mregion*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rvt_free_lkey(struct rvt_mregion *mr)
{
 unsigned long flags;
 u32 lkey = mr->lkey;
 u32 r;
 struct rvt_dev_info *dev = ib_to_rvt(mr->pd->device);
 struct rvt_lkey_table *rkt = &dev->lkey_table;
 int freed = 0;

 spin_lock_irqsave(&rkt->lock, flags);
 if (!lkey) {
  if (mr->lkey_published) {
   mr->lkey_published = 0;

   rcu_assign_pointer(dev->dma_mr, ((void*)0));
   rvt_put_mr(mr);
  }
 } else {
  if (!mr->lkey_published)
   goto out;
  r = lkey >> (32 - dev->dparms.lkey_table_size);
  mr->lkey_published = 0;

  rcu_assign_pointer(rkt->table[r], ((void*)0));
 }
 freed++;
out:
 spin_unlock_irqrestore(&rkt->lock, flags);
 if (freed)
  percpu_ref_kill(&mr->refcount);
}
