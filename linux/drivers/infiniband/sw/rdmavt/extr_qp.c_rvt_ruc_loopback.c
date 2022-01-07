
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wc ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_12__ {int imm_data; int invalidate_rkey; } ;
struct TYPE_15__ {int num_sge; int opcode; int send_flags; TYPE_2__ ex; } ;
struct TYPE_14__ {int swap; scalar_t__ compare_add; int rkey; int remote_addr; } ;
struct TYPE_13__ {int rkey; int remote_addr; } ;
struct rvt_swqe {int length; TYPE_5__ wr; TYPE_4__ atomic_wr; struct rvt_sge* sg_list; TYPE_3__ rdma_wr; } ;
struct rvt_sge {scalar_t__ vaddr; int mr; } ;
struct TYPE_17__ {scalar_t__ qp_type; int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct TYPE_19__ {int num_sge; int total_len; struct rvt_sge sge; struct rvt_sge* sg_list; } ;
struct TYPE_18__ {int num_sge; struct rvt_sge sge; struct rvt_sge* sg_list; } ;
struct rvt_qp {int port_num; int s_flags; size_t state; scalar_t__ s_last; scalar_t__ s_cur; scalar_t__ s_size; int s_len; int r_len; int qp_access_flags; scalar_t__ s_rnr_retry; scalar_t__ s_rnr_retry_cnt; int r_min_rnr_timer; int s_lock; TYPE_7__ ibqp; int r_lock; int local_ops_pending; int remote_ah_attr; int remote_qpn; int r_wr_id; int r_aflags; TYPE_9__ r_sge; TYPE_8__ s_sge; int s_head; } ;
struct rvt_ibport {int n_rnr_naks; int n_loop_pkts; } ;
struct rvt_dev_info {struct rvt_ibport** ports; } ;
struct TYPE_11__ {int imm_data; int invalidate_rkey; } ;
struct ib_wc {int byte_len; int slid; int port_num; void* status; int sl; int src_qp; TYPE_7__* qp; int wr_id; int opcode; TYPE_1__ ex; void* wc_flags; } ;
struct TYPE_16__ {TYPE_7__* qp; } ;
struct ib_event {int event; TYPE_6__ element; int device; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;
typedef int atomic64_t ;


 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_AETH_CREDIT_SHIFT ;
 int IB_EVENT_QP_LAST_WQE_REACHED ;
 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;
 int IB_SEND_SOLICITED ;
 void* IB_WC_LOC_PROT_ERR ;
 void* IB_WC_LOC_QP_OP_ERR ;
 int IB_WC_RECV ;
 int IB_WC_RECV_RDMA_WITH_IMM ;
 int IB_WC_REM_ACCESS_ERR ;
 void* IB_WC_REM_INV_REQ_ERR ;
 int IB_WC_REM_OP_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 void* IB_WC_SUCCESS ;
 void* IB_WC_WITH_IMM ;
 void* IB_WC_WITH_INVALIDATE ;
 int IB_WC_WR_FLUSH_ERR ;
 scalar_t__ READ_ONCE (int ) ;
 int RVT_FLUSH_SEND ;
 int RVT_PROCESS_NEXT_SEND_OK ;
 int RVT_PROCESS_OR_FLUSH_SEND ;
 int RVT_PROCESS_RECV_OK ;
 int RVT_R_WRID_VALID ;
 int RVT_SEND_COMPLETION_ONLY ;
 int RVT_S_ANY_WAIT ;
 int RVT_S_BUSY ;
 int U16_MAX ;
 int WARN_ON_ONCE (int) ;
 int atomic64_add_return (scalar_t__,int *) ;
 int atomic_dec (int *) ;
 int cmpxchg (scalar_t__*,scalar_t__,int ) ;
 int* ib_rvt_state_ops ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 int loopback_qp_drop (struct rvt_ibport*,struct rvt_qp*) ;
 int memset (struct ib_wc*,int ,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdma_ah_get_dlid (int *) ;
 int rdma_ah_get_sl (int *) ;
 int rvt_add_rnr_timer (struct rvt_qp*,int) ;
 int rvt_copy_sge (struct rvt_qp*,TYPE_9__*,scalar_t__,scalar_t__,int,int) ;
 int rvt_error_qp (struct rvt_qp*,int) ;
 int rvt_get_rwqe (struct rvt_qp*,int) ;
 scalar_t__ rvt_get_sge_length (struct rvt_sge*,int) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,scalar_t__) ;
 int rvt_invalidate_rkey (struct rvt_qp*,int ) ;
 int rvt_is_user_qp (struct rvt_qp*) ;
 struct rvt_qp* rvt_lookup_qpn (struct rvt_dev_info*,struct rvt_ibport*,int ) ;
 int rvt_put_mr (int ) ;
 int rvt_put_ss (TYPE_9__*) ;
 int rvt_rc_error (struct rvt_qp*,void*) ;
 int rvt_recv_cq (struct rvt_qp*,struct ib_wc*,int) ;
 int rvt_rkey_ok (struct rvt_qp*,struct rvt_sge*,int,int ,int ,int) ;
 int rvt_send_complete (struct rvt_qp*,struct rvt_swqe*,int) ;
 int rvt_update_sge (TYPE_8__*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_event*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int unlikely (int) ;

void rvt_ruc_loopback(struct rvt_qp *sqp)
{
 struct rvt_ibport *rvp = ((void*)0);
 struct rvt_dev_info *rdi = ib_to_rvt(sqp->ibqp.device);
 struct rvt_qp *qp;
 struct rvt_swqe *wqe;
 struct rvt_sge *sge;
 unsigned long flags;
 struct ib_wc wc;
 u64 sdata;
 atomic64_t *maddr;
 enum ib_wc_status send_status;
 bool release;
 int ret;
 bool copy_last = 0;
 int local_ops = 0;

 rcu_read_lock();
 rvp = rdi->ports[sqp->port_num - 1];






 qp = rvt_lookup_qpn(ib_to_rvt(sqp->ibqp.device), rvp,
       sqp->remote_qpn);

 spin_lock_irqsave(&sqp->s_lock, flags);


 if ((sqp->s_flags & (RVT_S_BUSY | RVT_S_ANY_WAIT)) ||
     !(ib_rvt_state_ops[sqp->state] & RVT_PROCESS_OR_FLUSH_SEND))
  goto unlock;

 sqp->s_flags |= RVT_S_BUSY;

again:
 if (sqp->s_last == READ_ONCE(sqp->s_head))
  goto clr_busy;
 wqe = rvt_get_swqe_ptr(sqp, sqp->s_last);


 if (!(ib_rvt_state_ops[sqp->state] & RVT_PROCESS_NEXT_SEND_OK)) {
  if (!(ib_rvt_state_ops[sqp->state] & RVT_FLUSH_SEND))
   goto clr_busy;

  send_status = IB_WC_WR_FLUSH_ERR;
  goto flush_send;
 }






 if (sqp->s_last == sqp->s_cur) {
  if (++sqp->s_cur >= sqp->s_size)
   sqp->s_cur = 0;
 }
 spin_unlock_irqrestore(&sqp->s_lock, flags);

 if (!qp) {
  send_status = loopback_qp_drop(rvp, sqp);
  goto serr_no_r_lock;
 }
 spin_lock_irqsave(&qp->r_lock, flags);
 if (!(ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK) ||
     qp->ibqp.qp_type != sqp->ibqp.qp_type) {
  send_status = loopback_qp_drop(rvp, sqp);
  goto serr;
 }

 memset(&wc, 0, sizeof(wc));
 send_status = IB_WC_SUCCESS;

 release = 1;
 sqp->s_sge.sge = wqe->sg_list[0];
 sqp->s_sge.sg_list = wqe->sg_list + 1;
 sqp->s_sge.num_sge = wqe->wr.num_sge;
 sqp->s_len = wqe->length;
 switch (wqe->wr.opcode) {
 case 131:
  goto send_comp;

 case 135:
  if (!(wqe->wr.send_flags & RVT_SEND_COMPLETION_ONLY)) {
   if (rvt_invalidate_rkey(sqp,
      wqe->wr.ex.invalidate_rkey))
    send_status = IB_WC_LOC_PROT_ERR;
   local_ops = 1;
  }
  goto send_comp;

 case 128:
 case 129:
 case 130:
  ret = rvt_get_rwqe(qp, 0);
  if (ret < 0)
   goto op_err;
  if (!ret)
   goto rnr_nak;
  if (wqe->length > qp->r_len)
   goto inv_err;
  switch (wqe->wr.opcode) {
  case 128:
   if (!rvt_invalidate_rkey(qp,
       wqe->wr.ex.invalidate_rkey)) {
    wc.wc_flags = IB_WC_WITH_INVALIDATE;
    wc.ex.invalidate_rkey =
     wqe->wr.ex.invalidate_rkey;
   }
   break;
  case 129:
   wc.wc_flags = IB_WC_WITH_IMM;
   wc.ex.imm_data = wqe->wr.ex.imm_data;
   break;
  default:
   break;
  }
  break;

 case 132:
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_WRITE)))
   goto inv_err;
  wc.wc_flags = IB_WC_WITH_IMM;
  wc.ex.imm_data = wqe->wr.ex.imm_data;
  ret = rvt_get_rwqe(qp, 1);
  if (ret < 0)
   goto op_err;
  if (!ret)
   goto rnr_nak;

  goto do_write;
 case 133:
  copy_last = rvt_is_user_qp(qp);
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_WRITE)))
   goto inv_err;
do_write:
  if (wqe->length == 0)
   break;
  if (unlikely(!rvt_rkey_ok(qp, &qp->r_sge.sge, wqe->length,
       wqe->rdma_wr.remote_addr,
       wqe->rdma_wr.rkey,
       IB_ACCESS_REMOTE_WRITE)))
   goto acc_err;
  qp->r_sge.sg_list = ((void*)0);
  qp->r_sge.num_sge = 1;
  qp->r_sge.total_len = wqe->length;
  break;

 case 134:
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_READ)))
   goto inv_err;
  if (unlikely(!rvt_rkey_ok(qp, &sqp->s_sge.sge, wqe->length,
       wqe->rdma_wr.remote_addr,
       wqe->rdma_wr.rkey,
       IB_ACCESS_REMOTE_READ)))
   goto acc_err;
  release = 0;
  sqp->s_sge.sg_list = ((void*)0);
  sqp->s_sge.num_sge = 1;
  qp->r_sge.sge = wqe->sg_list[0];
  qp->r_sge.sg_list = wqe->sg_list + 1;
  qp->r_sge.num_sge = wqe->wr.num_sge;
  qp->r_sge.total_len = wqe->length;
  break;

 case 137:
 case 136:
  if (unlikely(!(qp->qp_access_flags & IB_ACCESS_REMOTE_ATOMIC)))
   goto inv_err;
  if (unlikely(!rvt_rkey_ok(qp, &qp->r_sge.sge, sizeof(u64),
       wqe->atomic_wr.remote_addr,
       wqe->atomic_wr.rkey,
       IB_ACCESS_REMOTE_ATOMIC)))
   goto acc_err;

  maddr = (atomic64_t *)qp->r_sge.sge.vaddr;
  sdata = wqe->atomic_wr.compare_add;
  *(u64 *)sqp->s_sge.sge.vaddr =
   (wqe->wr.opcode == 136) ?
   (u64)atomic64_add_return(sdata, maddr) - sdata :
   (u64)cmpxchg((u64 *)qp->r_sge.sge.vaddr,
          sdata, wqe->atomic_wr.swap);
  rvt_put_mr(qp->r_sge.sge.mr);
  qp->r_sge.num_sge = 0;
  goto send_comp;

 default:
  send_status = IB_WC_LOC_QP_OP_ERR;
  goto serr;
 }

 sge = &sqp->s_sge.sge;
 while (sqp->s_len) {
  u32 len = rvt_get_sge_length(sge, sqp->s_len);

  WARN_ON_ONCE(len == 0);
  rvt_copy_sge(qp, &qp->r_sge, sge->vaddr,
        len, release, copy_last);
  rvt_update_sge(&sqp->s_sge, len, !release);
  sqp->s_len -= len;
 }
 if (release)
  rvt_put_ss(&qp->r_sge);

 if (!test_and_clear_bit(RVT_R_WRID_VALID, &qp->r_aflags))
  goto send_comp;

 if (wqe->wr.opcode == 132)
  wc.opcode = IB_WC_RECV_RDMA_WITH_IMM;
 else
  wc.opcode = IB_WC_RECV;
 wc.wr_id = qp->r_wr_id;
 wc.status = IB_WC_SUCCESS;
 wc.byte_len = wqe->length;
 wc.qp = &qp->ibqp;
 wc.src_qp = qp->remote_qpn;
 wc.slid = rdma_ah_get_dlid(&qp->remote_ah_attr) & U16_MAX;
 wc.sl = rdma_ah_get_sl(&qp->remote_ah_attr);
 wc.port_num = 1;

 rvt_recv_cq(qp, &wc, wqe->wr.send_flags & IB_SEND_SOLICITED);

send_comp:
 spin_unlock_irqrestore(&qp->r_lock, flags);
 spin_lock_irqsave(&sqp->s_lock, flags);
 rvp->n_loop_pkts++;
flush_send:
 sqp->s_rnr_retry = sqp->s_rnr_retry_cnt;
 rvt_send_complete(sqp, wqe, send_status);
 if (local_ops) {
  atomic_dec(&sqp->local_ops_pending);
  local_ops = 0;
 }
 goto again;

rnr_nak:

 if (qp->ibqp.qp_type == IB_QPT_UC)
  goto send_comp;
 rvp->n_rnr_naks++;




 if (sqp->s_rnr_retry == 0) {
  send_status = IB_WC_RNR_RETRY_EXC_ERR;
  goto serr;
 }
 if (sqp->s_rnr_retry_cnt < 7)
  sqp->s_rnr_retry--;
 spin_unlock_irqrestore(&qp->r_lock, flags);
 spin_lock_irqsave(&sqp->s_lock, flags);
 if (!(ib_rvt_state_ops[sqp->state] & RVT_PROCESS_RECV_OK))
  goto clr_busy;
 rvt_add_rnr_timer(sqp, qp->r_min_rnr_timer <<
    IB_AETH_CREDIT_SHIFT);
 goto clr_busy;

op_err:
 send_status = IB_WC_REM_OP_ERR;
 wc.status = IB_WC_LOC_QP_OP_ERR;
 goto err;

inv_err:
 send_status =
  sqp->ibqp.qp_type == IB_QPT_RC ?
   IB_WC_REM_INV_REQ_ERR :
   IB_WC_SUCCESS;
 wc.status = IB_WC_LOC_QP_OP_ERR;
 goto err;

acc_err:
 send_status = IB_WC_REM_ACCESS_ERR;
 wc.status = IB_WC_LOC_PROT_ERR;
err:

 rvt_rc_error(qp, wc.status);

serr:
 spin_unlock_irqrestore(&qp->r_lock, flags);
serr_no_r_lock:
 spin_lock_irqsave(&sqp->s_lock, flags);
 rvt_send_complete(sqp, wqe, send_status);
 if (sqp->ibqp.qp_type == IB_QPT_RC) {
  int lastwqe = rvt_error_qp(sqp, IB_WC_WR_FLUSH_ERR);

  sqp->s_flags &= ~RVT_S_BUSY;
  spin_unlock_irqrestore(&sqp->s_lock, flags);
  if (lastwqe) {
   struct ib_event ev;

   ev.device = sqp->ibqp.device;
   ev.element.qp = &sqp->ibqp;
   ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
   sqp->ibqp.event_handler(&ev, sqp->ibqp.qp_context);
  }
  goto done;
 }
clr_busy:
 sqp->s_flags &= ~RVT_S_BUSY;
unlock:
 spin_unlock_irqrestore(&sqp->s_lock, flags);
done:
 rcu_read_unlock();
}
