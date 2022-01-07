
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct siw_srq {size_t rq_put; size_t num_rqe; int max_sge; int lock; struct siw_rqe* recvq; int kernel_verbs; } ;
struct siw_rqe {int num_sge; scalar_t__ flags; int sge; int id; } ;
struct ib_srq {int pd; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; int sg_list; int wr_id; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ SIW_WQE_VALID ;
 int siw_copy_sgl (int ,int ,int) ;
 int siw_dbg_pd (int ,char*,...) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct siw_srq* to_siw_srq (struct ib_srq*) ;
 scalar_t__ unlikely (int) ;

int siw_post_srq_recv(struct ib_srq *base_srq, const struct ib_recv_wr *wr,
        const struct ib_recv_wr **bad_wr)
{
 struct siw_srq *srq = to_siw_srq(base_srq);
 unsigned long flags;
 int rv = 0;

 if (unlikely(!srq->kernel_verbs)) {
  siw_dbg_pd(base_srq->pd,
      "[SRQ]: no kernel post_recv for mapped srq\n");
  rv = -EINVAL;
  goto out;
 }





 spin_lock_irqsave(&srq->lock, flags);

 while (wr) {
  u32 idx = srq->rq_put % srq->num_rqe;
  struct siw_rqe *rqe = &srq->recvq[idx];

  if (rqe->flags) {
   siw_dbg_pd(base_srq->pd, "SRQ full\n");
   rv = -ENOMEM;
   break;
  }
  if (unlikely(wr->num_sge > srq->max_sge)) {
   siw_dbg_pd(base_srq->pd,
       "[SRQ]: too many sge's: %d\n", wr->num_sge);
   rv = -EINVAL;
   break;
  }
  rqe->id = wr->wr_id;
  rqe->num_sge = wr->num_sge;
  siw_copy_sgl(wr->sg_list, rqe->sge, wr->num_sge);


  smp_wmb();

  rqe->flags = SIW_WQE_VALID;

  srq->rq_put++;
  wr = wr->next;
 }
 spin_unlock_irqrestore(&srq->lock, flags);
out:
 if (unlikely(rv < 0)) {
  siw_dbg_pd(base_srq->pd, "[SRQ]: error %d\n", rv);
  *bad_wr = wr;
 }
 return rv;
}
