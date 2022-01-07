
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct siw_rqe {int flags; int id; } ;
struct siw_qp {int ib_qp; struct siw_cq* rcq; } ;
struct siw_cqe {int status; size_t bytes; size_t inval_stag; int flags; int qp_id; int base_qp; scalar_t__ imm_data; int opcode; int id; } ;
struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct siw_cq {size_t cq_put; size_t num_cqe; int lock; TYPE_1__ base_cq; scalar_t__ kernel_verbs; struct siw_cqe* queue; } ;
typedef enum siw_wc_status { ____Placeholder_siw_wc_status } siw_wc_status ;


 int ENOMEM ;
 int IB_EVENT_CQ_ERR ;
 int READ_ONCE (int ) ;
 int SIW_OP_RECEIVE ;
 int SIW_WQE_REM_INVAL ;
 int SIW_WQE_SIGNALLED ;
 int SIW_WQE_VALID ;
 int WRITE_ONCE (int ,int ) ;
 int qp_id (struct siw_qp*) ;
 int siw_cq_event (struct siw_cq*,int ) ;
 int siw_cq_notify_now (struct siw_cq*,int ) ;
 int siw_dbg_cq (struct siw_cq*,char*) ;
 int smp_store_mb (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int ) ;

int siw_rqe_complete(struct siw_qp *qp, struct siw_rqe *rqe, u32 bytes,
       u32 inval_stag, enum siw_wc_status status)
{
 struct siw_cq *cq = qp->rcq;
 int rv = 0;

 if (cq) {
  struct siw_cqe *cqe;
  u32 idx;
  unsigned long flags;

  spin_lock_irqsave(&cq->lock, flags);

  idx = cq->cq_put % cq->num_cqe;
  cqe = &cq->queue[idx];

  if (!READ_ONCE(cqe->flags)) {
   bool notify;
   u8 cqe_flags = SIW_WQE_VALID;

   cqe->id = rqe->id;
   cqe->opcode = SIW_OP_RECEIVE;
   cqe->status = status;
   cqe->imm_data = 0;
   cqe->bytes = bytes;

   if (cq->kernel_verbs) {
    cqe->base_qp = qp->ib_qp;
    if (inval_stag) {
     cqe_flags |= SIW_WQE_REM_INVAL;
     cqe->inval_stag = inval_stag;
    }
   } else {
    cqe->qp_id = qp_id(qp);
   }

   WRITE_ONCE(cqe->flags, cqe_flags);

   smp_store_mb(rqe->flags, 0);

   cq->cq_put++;
   notify = siw_cq_notify_now(cq, SIW_WQE_SIGNALLED);

   spin_unlock_irqrestore(&cq->lock, flags);

   if (notify) {
    siw_dbg_cq(cq, "Call completion handler\n");
    cq->base_cq.comp_handler(&cq->base_cq,
      cq->base_cq.cq_context);
   }
  } else {
   spin_unlock_irqrestore(&cq->lock, flags);
   rv = -ENOMEM;
   siw_cq_event(cq, IB_EVENT_CQ_ERR);
  }
 } else {

  smp_store_mb(rqe->flags, 0);
 }
 return rv;
}
