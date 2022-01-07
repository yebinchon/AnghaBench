
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct siw_cqe {int flags; size_t status; size_t opcode; scalar_t__ id; int base_qp; int inval_stag; int bytes; } ;
struct siw_cq {size_t cq_get; size_t num_cqe; int lock; int kernel_verbs; struct siw_cqe* queue; } ;
struct TYPE_3__ {int invalidate_rkey; } ;
struct ib_wc {int qp; int wc_flags; TYPE_1__ ex; int byte_len; int opcode; int status; scalar_t__ wr_id; } ;
struct TYPE_4__ {int ib; } ;


 int IB_WC_WITH_INVALIDATE ;
 int READ_ONCE (int) ;
 int SIW_WQE_REM_INVAL ;
 int SIW_WQE_VALID ;
 int WRITE_ONCE (int,int ) ;
 scalar_t__ likely (int ) ;
 TYPE_2__* map_cqe_status ;
 int * map_wc_opcode ;
 int memset (struct ib_wc*,int ,int) ;
 int siw_dbg_cq (struct siw_cq*,char*,int,size_t,int,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int siw_reap_cqe(struct siw_cq *cq, struct ib_wc *wc)
{
 struct siw_cqe *cqe;
 unsigned long flags;

 spin_lock_irqsave(&cq->lock, flags);

 cqe = &cq->queue[cq->cq_get % cq->num_cqe];
 if (READ_ONCE(cqe->flags) & SIW_WQE_VALID) {
  memset(wc, 0, sizeof(*wc));
  wc->wr_id = cqe->id;
  wc->status = map_cqe_status[cqe->status].ib;
  wc->opcode = map_wc_opcode[cqe->opcode];
  wc->byte_len = cqe->bytes;






  if (likely(cq->kernel_verbs)) {
   if (cqe->flags & SIW_WQE_REM_INVAL) {
    wc->ex.invalidate_rkey = cqe->inval_stag;
    wc->wc_flags = IB_WC_WITH_INVALIDATE;
   }
   wc->qp = cqe->base_qp;
   siw_dbg_cq(cq,
       "idx %u, type %d, flags %2x, id 0x%pK\n",
       cq->cq_get % cq->num_cqe, cqe->opcode,
       cqe->flags, (void *)(uintptr_t)cqe->id);
  }
  WRITE_ONCE(cqe->flags, 0);
  cq->cq_get++;

  spin_unlock_irqrestore(&cq->lock, flags);

  return 1;
 }
 spin_unlock_irqrestore(&cq->lock, flags);

 return 0;
}
