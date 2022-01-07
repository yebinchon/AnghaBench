
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct send_context {int sw_index; } ;
struct sdma_engine {int this_idx; } ;
struct TYPE_8__ {int opcode; } ;
struct rvt_swqe {int ssn; TYPE_1__ wr; } ;
struct TYPE_10__ {int size; } ;
struct rvt_srq {TYPE_3__ rq; } ;
struct rvt_qp_iter {int n; struct rvt_qp* qp; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_9__ {size_t qp_type; int send_cq; int device; int qp_num; int srq; } ;
struct rvt_qp {size_t s_tail_ack_queue; TYPE_4__ r_rq; int r_min_rnr_timer; int s_ack_state; int s_state; int pid; TYPE_2__ ibqp; int s_rnr_retry; int s_rnr_retry_cnt; int s_retry_cnt; int s_retry; int pmtu; int remote_ah_attr; int remote_qpn; int r_head_ack_queue; int s_avail; int s_size; int s_head; int s_tail; int s_cur; int s_acked; int s_last; int r_psn; int s_sending_hpsn; int s_sending_psn; int s_next_psn; int s_psn; int s_last_psn; int s_lsn; int timeout; int s_flags; int state; int refcount; struct rvt_ack_entry* s_ack_queue; struct hfi1_qp_priv* priv; } ;
struct rvt_ack_entry {int lpsn; int psn; int opcode; } ;
struct TYPE_13__ {int list; } ;
struct hfi1_qp_priv {TYPE_6__ s_iowait; int s_sc; } ;
struct TYPE_12__ {int rdi; } ;


 int atomic_read (int *) ;
 int ib_cq_head (int ) ;
 int ib_cq_tail (int ) ;
 struct rvt_srq* ibsrq_to_rvtsrq (int ) ;
 int iowait_pio_pending (TYPE_6__*) ;
 int iowait_sdma_pending (TYPE_6__*) ;
 int list_empty (int *) ;
 scalar_t__ qp_idle (struct rvt_qp*) ;
 struct sdma_engine* qp_to_sdma_engine (struct rvt_qp*,int ) ;
 struct send_context* qp_to_send_context (struct rvt_qp*,int ) ;
 int * qp_type_str ;
 int rdma_ah_get_dlid (int *) ;
 int rdma_ah_get_sl (int *) ;
 struct rvt_swqe* rvt_get_swqe_ptr (struct rvt_qp*,int ) ;
 int rvt_max_atomic (int *) ;
 int seq_printf (struct seq_file*,char*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,size_t,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,struct sdma_engine*,int ,struct send_context*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,char*,int ) ;
 TYPE_5__* to_idev (int ) ;

void qp_iter_print(struct seq_file *s, struct rvt_qp_iter *iter)
{
 struct rvt_swqe *wqe;
 struct rvt_qp *qp = iter->qp;
 struct hfi1_qp_priv *priv = qp->priv;
 struct sdma_engine *sde;
 struct send_context *send_context;
 struct rvt_ack_entry *e = ((void*)0);
 struct rvt_srq *srq = qp->ibqp.srq ?
  ibsrq_to_rvtsrq(qp->ibqp.srq) : ((void*)0);

 sde = qp_to_sdma_engine(qp, priv->s_sc);
 wqe = rvt_get_swqe_ptr(qp, qp->s_last);
 send_context = qp_to_send_context(qp, priv->s_sc);
 if (qp->s_ack_queue)
  e = &qp->s_ack_queue[qp->s_tail_ack_queue];
 seq_printf(s,
     "N %d %s QP %x R %u %s %u %u f=%x %u %u %u %u %u %u SPSN %x %x %x %x %x RPSN %x S(%u %u %u %u %u %u %u) R(%u %u %u) RQP %x LID %x SL %u MTU %u %u %u %u %u SDE %p,%u SC %p,%u SCQ %u %u PID %d OS %x %x E %x %x %x RNR %d %s %d\n",
     iter->n,
     qp_idle(qp) ? "I" : "B",
     qp->ibqp.qp_num,
     atomic_read(&qp->refcount),
     qp_type_str[qp->ibqp.qp_type],
     qp->state,
     wqe ? wqe->wr.opcode : 0,
     qp->s_flags,
     iowait_sdma_pending(&priv->s_iowait),
     iowait_pio_pending(&priv->s_iowait),
     !list_empty(&priv->s_iowait.list),
     qp->timeout,
     wqe ? wqe->ssn : 0,
     qp->s_lsn,
     qp->s_last_psn,
     qp->s_psn, qp->s_next_psn,
     qp->s_sending_psn, qp->s_sending_hpsn,
     qp->r_psn,
     qp->s_last, qp->s_acked, qp->s_cur,
     qp->s_tail, qp->s_head, qp->s_size,
     qp->s_avail,

     qp->s_tail_ack_queue, qp->r_head_ack_queue,
     rvt_max_atomic(&to_idev(qp->ibqp.device)->rdi),

     qp->remote_qpn,
     rdma_ah_get_dlid(&qp->remote_ah_attr),
     rdma_ah_get_sl(&qp->remote_ah_attr),
     qp->pmtu,
     qp->s_retry,
     qp->s_retry_cnt,
     qp->s_rnr_retry_cnt,
     qp->s_rnr_retry,
     sde,
     sde ? sde->this_idx : 0,
     send_context,
     send_context ? send_context->sw_index : 0,
     ib_cq_head(qp->ibqp.send_cq),
     ib_cq_tail(qp->ibqp.send_cq),
     qp->pid,
     qp->s_state,
     qp->s_ack_state,

     e ? e->opcode : 0,
     e ? e->psn : 0,
     e ? e->lpsn : 0,
     qp->r_min_rnr_timer,
     srq ? "SRQ" : "RQ",
     srq ? srq->rq.size : qp->r_rq.size
  );
}
