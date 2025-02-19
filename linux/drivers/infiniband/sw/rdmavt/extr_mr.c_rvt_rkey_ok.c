
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct rvt_sge {size_t length; size_t sge_length; unsigned int m; unsigned int n; void* vaddr; struct rvt_mregion* mr; } ;
struct TYPE_6__ {scalar_t__ pd; int device; } ;
struct rvt_qp {TYPE_2__ ibqp; } ;
struct TYPE_5__ {int device; } ;
struct rvt_pd {scalar_t__ user; TYPE_1__ ibpd; } ;
struct rvt_mregion {size_t lkey; scalar_t__ pd; scalar_t__ iova; size_t length; int access_flags; int page_shift; TYPE_4__** map; scalar_t__ offset; int lkey_invalid; int lkey_published; } ;
struct rvt_lkey_table {size_t shift; int * table; } ;
struct rvt_dev_info {int dma_mr; struct rvt_lkey_table lkey_table; } ;
struct TYPE_8__ {TYPE_3__* segs; } ;
struct TYPE_7__ {size_t length; void* vaddr; } ;


 int READ_ONCE (int ) ;
 size_t RVT_SEGSZ ;
 scalar_t__ atomic_read (int *) ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_pd* ibpd_to_rvtpd (scalar_t__) ;
 struct rvt_mregion* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rvt_get_mr (struct rvt_mregion*) ;
 int rvt_put_mr (struct rvt_mregion*) ;
 scalar_t__ unlikely (int) ;

int rvt_rkey_ok(struct rvt_qp *qp, struct rvt_sge *sge,
  u32 len, u64 vaddr, u32 rkey, int acc)
{
 struct rvt_dev_info *dev = ib_to_rvt(qp->ibqp.device);
 struct rvt_lkey_table *rkt = &dev->lkey_table;
 struct rvt_mregion *mr;
 unsigned n, m;
 size_t off;





 rcu_read_lock();
 if (rkey == 0) {
  struct rvt_pd *pd = ibpd_to_rvtpd(qp->ibqp.pd);
  struct rvt_dev_info *rdi = ib_to_rvt(pd->ibpd.device);

  if (pd->user)
   goto bail;
  mr = rcu_dereference(rdi->dma_mr);
  if (!mr)
   goto bail;
  rvt_get_mr(mr);
  rcu_read_unlock();

  sge->mr = mr;
  sge->vaddr = (void *)vaddr;
  sge->length = len;
  sge->sge_length = len;
  sge->m = 0;
  sge->n = 0;
  goto ok;
 }

 mr = rcu_dereference(rkt->table[rkey >> rkt->shift]);
 if (!mr)
  goto bail;
 rvt_get_mr(mr);

 if (!READ_ONCE(mr->lkey_published))
  goto bail_unref;
 if (unlikely(atomic_read(&mr->lkey_invalid) ||
       mr->lkey != rkey || qp->ibqp.pd != mr->pd))
  goto bail_unref;

 off = vaddr - mr->iova;
 if (unlikely(vaddr < mr->iova || off + len > mr->length ||
       (mr->access_flags & acc) == 0))
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
 sge->mr = mr;
 sge->vaddr = mr->map[m]->segs[n].vaddr + off;
 sge->length = mr->map[m]->segs[n].length - off;
 sge->sge_length = len;
 sge->m = m;
 sge->n = n;
ok:
 return 1;
bail_unref:
 rvt_put_mr(mr);
bail:
 rcu_read_unlock();
 return 0;
}
