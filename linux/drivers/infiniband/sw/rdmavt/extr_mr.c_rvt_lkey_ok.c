
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rvt_sge {scalar_t__ length; scalar_t__ sge_length; unsigned int m; unsigned int n; void* vaddr; struct rvt_mregion* mr; } ;
struct TYPE_4__ {int device; } ;
struct rvt_pd {TYPE_1__ ibpd; scalar_t__ user; } ;
struct rvt_mregion {scalar_t__ lkey; size_t user_base; scalar_t__ length; int access_flags; int page_shift; TYPE_3__** map; scalar_t__ offset; TYPE_1__* pd; int lkey_invalid; int lkey_published; } ;
struct rvt_lkey_table {size_t shift; int * table; } ;
struct rvt_dev_info {int dma_mr; } ;
struct ib_sge {scalar_t__ lkey; size_t addr; scalar_t__ length; } ;
struct TYPE_6__ {TYPE_2__* segs; } ;
struct TYPE_5__ {size_t length; void* vaddr; } ;


 int EINVAL ;
 int READ_ONCE (int ) ;
 size_t RVT_SEGSZ ;
 scalar_t__ atomic_read (int *) ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_mregion* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rvt_get_mr (struct rvt_mregion*) ;
 int rvt_put_mr (struct rvt_mregion*) ;
 scalar_t__ rvt_sge_adjacent (struct rvt_sge*,struct ib_sge*) ;
 int trace_rvt_sge_new (struct rvt_sge*,struct ib_sge*) ;
 scalar_t__ unlikely (int) ;

int rvt_lkey_ok(struct rvt_lkey_table *rkt, struct rvt_pd *pd,
  struct rvt_sge *isge, struct rvt_sge *last_sge,
  struct ib_sge *sge, int acc)
{
 struct rvt_mregion *mr;
 unsigned n, m;
 size_t off;





 if (sge->lkey == 0) {
  struct rvt_dev_info *dev = ib_to_rvt(pd->ibpd.device);

  if (pd->user)
   return -EINVAL;
  if (rvt_sge_adjacent(last_sge, sge))
   return 0;
  rcu_read_lock();
  mr = rcu_dereference(dev->dma_mr);
  if (!mr)
   goto bail;
  rvt_get_mr(mr);
  rcu_read_unlock();

  isge->mr = mr;
  isge->vaddr = (void *)sge->addr;
  isge->length = sge->length;
  isge->sge_length = sge->length;
  isge->m = 0;
  isge->n = 0;
  goto ok;
 }
 if (rvt_sge_adjacent(last_sge, sge))
  return 0;
 rcu_read_lock();
 mr = rcu_dereference(rkt->table[sge->lkey >> rkt->shift]);
 if (!mr)
  goto bail;
 rvt_get_mr(mr);
 if (!READ_ONCE(mr->lkey_published))
  goto bail_unref;

 if (unlikely(atomic_read(&mr->lkey_invalid) ||
       mr->lkey != sge->lkey || mr->pd != &pd->ibpd))
  goto bail_unref;

 off = sge->addr - mr->user_base;
 if (unlikely(sge->addr < mr->user_base ||
       off + sge->length > mr->length ||
       (mr->access_flags & acc) != acc))
  goto bail_unref;
 rcu_read_unlock();

 off += mr->offset;
 if (mr->page_shift) {





  size_t entries_spanned_by_off;

  entries_spanned_by_off = off >> mr->page_shift;
  off -= (entries_spanned_by_off << mr->page_shift);
  m = entries_spanned_by_off / RVT_SEGSZ;
  n = entries_spanned_by_off % RVT_SEGSZ;
 } else {
  m = 0;
  n = 0;
  while (off >= mr->map[m]->segs[n].length) {
   off -= mr->map[m]->segs[n].length;
   n++;
   if (n >= RVT_SEGSZ) {
    m++;
    n = 0;
   }
  }
 }
 isge->mr = mr;
 isge->vaddr = mr->map[m]->segs[n].vaddr + off;
 isge->length = mr->map[m]->segs[n].length - off;
 isge->sge_length = sge->length;
 isge->m = m;
 isge->n = n;
ok:
 trace_rvt_sge_new(isge, sge);
 return 1;
bail_unref:
 rvt_put_mr(mr);
bail:
 rcu_read_unlock();
 return -EINVAL;
}
