
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {unsigned int max_sge; scalar_t__ size; struct rvt_krwq* kwq; } ;
struct rvt_srq {TYPE_3__ rq; } ;
struct rvt_rwqe {int num_sge; TYPE_1__* sg_list; int wr_id; } ;
struct rvt_krwq {scalar_t__ head; int p_lock; int tail; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {int num_sge; TYPE_2__* sg_list; int wr_id; struct ib_recv_wr* next; } ;
struct TYPE_5__ {int lkey; int length; int addr; } ;
struct TYPE_4__ {int lkey; int length; int addr; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ READ_ONCE (int ) ;
 struct rvt_srq* ibsrq_to_rvtsrq (struct ib_srq*) ;
 struct rvt_rwqe* rvt_get_rwqe_ptr (TYPE_3__*,scalar_t__) ;
 int smp_store_release (scalar_t__*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int rvt_post_srq_recv(struct ib_srq *ibsrq, const struct ib_recv_wr *wr,
        const struct ib_recv_wr **bad_wr)
{
 struct rvt_srq *srq = ibsrq_to_rvtsrq(ibsrq);
 struct rvt_krwq *wq;
 unsigned long flags;

 for (; wr; wr = wr->next) {
  struct rvt_rwqe *wqe;
  u32 next;
  int i;

  if ((unsigned)wr->num_sge > srq->rq.max_sge) {
   *bad_wr = wr;
   return -EINVAL;
  }

  spin_lock_irqsave(&srq->rq.kwq->p_lock, flags);
  wq = srq->rq.kwq;
  next = wq->head + 1;
  if (next >= srq->rq.size)
   next = 0;
  if (next == READ_ONCE(wq->tail)) {
   spin_unlock_irqrestore(&srq->rq.kwq->p_lock, flags);
   *bad_wr = wr;
   return -ENOMEM;
  }

  wqe = rvt_get_rwqe_ptr(&srq->rq, wq->head);
  wqe->wr_id = wr->wr_id;
  wqe->num_sge = wr->num_sge;
  for (i = 0; i < wr->num_sge; i++) {
   wqe->sg_list[i].addr = wr->sg_list[i].addr;
   wqe->sg_list[i].length = wr->sg_list[i].length;
   wqe->sg_list[i].lkey = wr->sg_list[i].lkey;
  }

  smp_store_release(&wq->head, next);
  spin_unlock_irqrestore(&srq->rq.kwq->p_lock, flags);
 }
 return 0;
}
