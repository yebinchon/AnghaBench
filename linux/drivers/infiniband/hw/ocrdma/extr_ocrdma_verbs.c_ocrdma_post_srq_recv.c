
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_4__ {scalar_t__ max_sges; } ;
struct ocrdma_srq {int q_lock; TYPE_1__ rq; int * rqe_wr_id_tbl; } ;
struct ocrdma_hdr_wqe {int dummy; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {scalar_t__ num_sge; struct ib_recv_wr* next; int wr_id; } ;


 int ENOMEM ;
 struct ocrdma_srq* get_ocrdma_srq (struct ib_srq*) ;
 int ocrdma_build_rqe (struct ocrdma_hdr_wqe*,struct ib_recv_wr const*,size_t) ;
 scalar_t__ ocrdma_hwq_free_cnt (TYPE_1__*) ;
 struct ocrdma_hdr_wqe* ocrdma_hwq_head (TYPE_1__*) ;
 int ocrdma_hwq_inc_head (TYPE_1__*) ;
 int ocrdma_ring_srq_db (struct ocrdma_srq*) ;
 size_t ocrdma_srq_get_idx (struct ocrdma_srq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;

int ocrdma_post_srq_recv(struct ib_srq *ibsrq, const struct ib_recv_wr *wr,
    const struct ib_recv_wr **bad_wr)
{
 int status = 0;
 unsigned long flags;
 struct ocrdma_srq *srq;
 struct ocrdma_hdr_wqe *rqe;
 u16 tag;

 srq = get_ocrdma_srq(ibsrq);

 spin_lock_irqsave(&srq->q_lock, flags);
 while (wr) {
  if (ocrdma_hwq_free_cnt(&srq->rq) == 0 ||
      wr->num_sge > srq->rq.max_sges) {
   status = -ENOMEM;
   *bad_wr = wr;
   break;
  }
  tag = ocrdma_srq_get_idx(srq);
  rqe = ocrdma_hwq_head(&srq->rq);
  ocrdma_build_rqe(rqe, wr, tag);

  srq->rqe_wr_id_tbl[tag] = wr->wr_id;

  wmb();

  ocrdma_ring_srq_db(srq);

  ocrdma_hwq_inc_head(&srq->rq);
  wr = wr->next;
 }
 spin_unlock_irqrestore(&srq->q_lock, flags);
 return status;
}
