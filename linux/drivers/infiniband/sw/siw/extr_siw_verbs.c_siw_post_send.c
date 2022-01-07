
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct siw_wqe {scalar_t__ wr_status; } ;
struct siw_sqe {int flags; int num_sge; uintptr_t base_mr; int access; scalar_t__ id; int opcode; int rkey; int raddr; int * sge; } ;
struct TYPE_6__ {int in_syscall; int tx_suspend; } ;
struct TYPE_7__ {int state; size_t sq_size; scalar_t__ sq_max_sges; int flags; } ;
struct siw_qp {size_t sq_put; int state_lock; TYPE_1__ tx_ctx; scalar_t__ kernel_verbs; int sq_lock; TYPE_2__ attrs; struct siw_sqe* sendq; } ;
struct TYPE_8__ {int invalidate_rkey; } ;
struct ib_send_wr {scalar_t__ num_sge; int send_flags; int opcode; struct ib_send_wr* next; TYPE_3__ ex; int sg_list; scalar_t__ wr_id; } ;
struct ib_qp {int dummy; } ;
struct TYPE_10__ {int rkey; int remote_addr; } ;
struct TYPE_9__ {int access; int key; scalar_t__ mr; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTCONN ;
 int IB_SEND_FENCE ;
 int IB_SEND_INLINE ;
 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;







 int IWARP_ACCESS_MASK ;
 int SIW_OP_INVAL_STAG ;
 int SIW_OP_READ ;
 int SIW_OP_READ_LOCAL_INV ;
 int SIW_OP_REG_MR ;
 int SIW_OP_SEND ;
 int SIW_OP_SEND_REMOTE_INV ;
 int SIW_OP_WRITE ;
 scalar_t__ SIW_QP_STATE_RTS ;
 int SIW_SIGNAL_ALL_WR ;
 int SIW_WQE_INLINE ;
 int SIW_WQE_READ_FENCE ;
 int SIW_WQE_SIGNALLED ;
 int SIW_WQE_SOLICITED ;
 int SIW_WQE_VALID ;
 scalar_t__ SIW_WR_IDLE ;
 int down_read_trylock (int *) ;
 TYPE_5__* rdma_wr (struct ib_send_wr const*) ;
 TYPE_4__* reg_wr (struct ib_send_wr const*) ;
 int siw_activate_tx (struct siw_qp*) ;
 int siw_copy_inline_sgl (struct ib_send_wr const*,struct siw_sqe*) ;
 int siw_copy_sgl (int ,int *,int) ;
 int siw_dbg_qp (struct siw_qp*,char*,...) ;
 int siw_qp_cm_drop (struct siw_qp*,int ) ;
 scalar_t__ siw_qp_sq_process (struct siw_qp*) ;
 int siw_sq_start (struct siw_qp*) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct siw_qp* to_siw_qp (struct ib_qp*) ;
 struct siw_wqe* tx_wqe (struct siw_qp*) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

int siw_post_send(struct ib_qp *base_qp, const struct ib_send_wr *wr,
    const struct ib_send_wr **bad_wr)
{
 struct siw_qp *qp = to_siw_qp(base_qp);
 struct siw_wqe *wqe = tx_wqe(qp);

 unsigned long flags;
 int rv = 0;





 if (!down_read_trylock(&qp->state_lock)) {
  *bad_wr = wr;
  siw_dbg_qp(qp, "QP locked, state %d\n", qp->attrs.state);
  return -ENOTCONN;
 }
 if (unlikely(qp->attrs.state != SIW_QP_STATE_RTS)) {
  up_read(&qp->state_lock);
  *bad_wr = wr;
  siw_dbg_qp(qp, "QP out of state %d\n", qp->attrs.state);
  return -ENOTCONN;
 }
 if (wr && !qp->kernel_verbs) {
  siw_dbg_qp(qp, "wr must be empty for user mapped sq\n");
  up_read(&qp->state_lock);
  *bad_wr = wr;
  return -EINVAL;
 }
 spin_lock_irqsave(&qp->sq_lock, flags);

 while (wr) {
  u32 idx = qp->sq_put % qp->attrs.sq_size;
  struct siw_sqe *sqe = &qp->sendq[idx];

  if (sqe->flags) {
   siw_dbg_qp(qp, "sq full\n");
   rv = -ENOMEM;
   break;
  }
  if (wr->num_sge > qp->attrs.sq_max_sges) {
   siw_dbg_qp(qp, "too many sge's: %d\n", wr->num_sge);
   rv = -EINVAL;
   break;
  }
  sqe->id = wr->wr_id;

  if ((wr->send_flags & IB_SEND_SIGNALED) ||
      (qp->attrs.flags & SIW_SIGNAL_ALL_WR))
   sqe->flags |= SIW_WQE_SIGNALLED;

  if (wr->send_flags & IB_SEND_FENCE)
   sqe->flags |= SIW_WQE_READ_FENCE;

  switch (wr->opcode) {
  case 129:
  case 128:
   if (wr->send_flags & IB_SEND_SOLICITED)
    sqe->flags |= SIW_WQE_SOLICITED;

   if (!(wr->send_flags & IB_SEND_INLINE)) {
    siw_copy_sgl(wr->sg_list, sqe->sge,
          wr->num_sge);
    sqe->num_sge = wr->num_sge;
   } else {
    rv = siw_copy_inline_sgl(wr, sqe);
    if (rv <= 0) {
     rv = -EINVAL;
     break;
    }
    sqe->flags |= SIW_WQE_INLINE;
    sqe->num_sge = 1;
   }
   if (wr->opcode == 129)
    sqe->opcode = SIW_OP_SEND;
   else {
    sqe->opcode = SIW_OP_SEND_REMOTE_INV;
    sqe->rkey = wr->ex.invalidate_rkey;
   }
   break;

  case 132:
  case 133:







   if (unlikely(wr->num_sge != 1)) {
    rv = -EINVAL;
    break;
   }
   siw_copy_sgl(wr->sg_list, &sqe->sge[0], 1);



   sqe->raddr = rdma_wr(wr)->remote_addr;
   sqe->rkey = rdma_wr(wr)->rkey;
   sqe->num_sge = 1;

   if (wr->opcode == 133)
    sqe->opcode = SIW_OP_READ;
   else
    sqe->opcode = SIW_OP_READ_LOCAL_INV;
   break;

  case 131:
   if (!(wr->send_flags & IB_SEND_INLINE)) {
    siw_copy_sgl(wr->sg_list, &sqe->sge[0],
          wr->num_sge);
    sqe->num_sge = wr->num_sge;
   } else {
    rv = siw_copy_inline_sgl(wr, sqe);
    if (unlikely(rv < 0)) {
     rv = -EINVAL;
     break;
    }
    sqe->flags |= SIW_WQE_INLINE;
    sqe->num_sge = 1;
   }
   sqe->raddr = rdma_wr(wr)->remote_addr;
   sqe->rkey = rdma_wr(wr)->rkey;
   sqe->opcode = SIW_OP_WRITE;
   break;

  case 130:
   sqe->base_mr = (uintptr_t)reg_wr(wr)->mr;
   sqe->rkey = reg_wr(wr)->key;
   sqe->access = reg_wr(wr)->access & IWARP_ACCESS_MASK;
   sqe->opcode = SIW_OP_REG_MR;
   break;

  case 134:
   sqe->rkey = wr->ex.invalidate_rkey;
   sqe->opcode = SIW_OP_INVAL_STAG;
   break;

  default:
   siw_dbg_qp(qp, "ib wr type %d unsupported\n",
       wr->opcode);
   rv = -EINVAL;
   break;
  }
  siw_dbg_qp(qp, "opcode %d, flags 0x%x, wr_id 0x%pK\n",
      sqe->opcode, sqe->flags,
      (void *)(uintptr_t)sqe->id);

  if (unlikely(rv < 0))
   break;


  smp_wmb();
  sqe->flags |= SIW_WQE_VALID;

  qp->sq_put++;
  wr = wr->next;
 }
 if (wqe->wr_status != SIW_WR_IDLE) {
  spin_unlock_irqrestore(&qp->sq_lock, flags);
  goto skip_direct_sending;
 }
 rv = siw_activate_tx(qp);
 spin_unlock_irqrestore(&qp->sq_lock, flags);

 if (rv <= 0)
  goto skip_direct_sending;

 if (qp->kernel_verbs) {
  rv = siw_sq_start(qp);
 } else {
  qp->tx_ctx.in_syscall = 1;

  if (siw_qp_sq_process(qp) != 0 && !(qp->tx_ctx.tx_suspend))
   siw_qp_cm_drop(qp, 0);

  qp->tx_ctx.in_syscall = 0;
 }
skip_direct_sending:

 up_read(&qp->state_lock);

 if (rv >= 0)
  return 0;



 siw_dbg_qp(qp, "error %d\n", rv);

 *bad_wr = wr;
 return rv;
}
