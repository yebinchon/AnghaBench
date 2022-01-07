
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rxe_send_wqe {int status; int state; int last_psn; } ;
struct TYPE_5__ {scalar_t__ state; int need_retry; int task; int psn; int wait_psn; } ;
struct TYPE_6__ {int timeout_retry; int opcode; int psn; int started_retry; int retry_cnt; int rnr_retry; scalar_t__ timeout; } ;
struct TYPE_4__ {int device; } ;
struct rxe_qp {int rnr_nak_timer; TYPE_2__ req; TYPE_3__ comp; scalar_t__ qp_timeout_jiffies; int retrans_timer; int resp_pkts; scalar_t__ valid; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int mask; int opcode; struct rxe_qp* qp; int psn; } ;
struct rxe_dev {int dummy; } ;
typedef enum comp_state { ____Placeholder_comp_state } comp_state ;


 int AETH_TYPE_MASK ;
 int BTH_PSN_MASK ;
 int EAGAIN ;
 int IB_QPT_RC ;
 int IB_WC_RETRY_EXC_ERR ;
 int IB_WC_RNR_RETRY_EXC_ERR ;
 int IB_WC_SUCCESS ;
 scalar_t__ QP_STATE_ERROR ;
 scalar_t__ QP_STATE_READY ;
 scalar_t__ QP_STATE_RESET ;
 int RXE_CNT_COMP_RETRY ;
 int RXE_CNT_RETRY_EXCEEDED ;
 int RXE_CNT_RNR_RETRY_EXCEEDED ;
 int RXE_END_MASK ;
 struct rxe_pkt_info* SKB_TO_PKT (struct sk_buff*) ;
 int WARN_ON_ONCE (int) ;
 int aeth_syn (struct rxe_pkt_info*) ;
 int check_ack (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ;
 int check_psn (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ;
 int * comp_state_name ;
 int complete_ack (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ;
 int complete_wqe (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ;
 int do_atomic (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ;
 int do_complete (struct rxe_qp*,struct rxe_send_wqe*) ;
 int do_read (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe*) ;
 int get_wqe (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_send_wqe**) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_debug (char*,int ,...) ;
 int psn_compare (int ,int) ;
 int qp_num (struct rxe_qp*) ;
 int qp_type (struct rxe_qp*) ;
 scalar_t__ rnrnak_jiffies (int) ;
 int rxe_add_ref (struct rxe_qp*) ;
 int rxe_counter_inc (struct rxe_dev*,int ) ;
 int rxe_drain_resp_pkts (struct rxe_qp*,int) ;
 int rxe_drop_ref (struct rxe_qp*) ;
 int rxe_qp_error (struct rxe_qp*) ;
 int rxe_run_task (int *,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 struct rxe_dev* to_rdev (int ) ;
 int wqe_state_pending ;
 int wqe_state_posted ;

int rxe_completer(void *arg)
{
 struct rxe_qp *qp = (struct rxe_qp *)arg;
 struct rxe_dev *rxe = to_rdev(qp->ibqp.device);
 struct rxe_send_wqe *wqe = ((void*)0);
 struct sk_buff *skb = ((void*)0);
 struct rxe_pkt_info *pkt = ((void*)0);
 enum comp_state state;

 rxe_add_ref(qp);

 if (!qp->valid || qp->req.state == QP_STATE_ERROR ||
     qp->req.state == QP_STATE_RESET) {
  rxe_drain_resp_pkts(qp, qp->valid &&
        qp->req.state == QP_STATE_ERROR);
  goto exit;
 }

 if (qp->comp.timeout) {
  qp->comp.timeout_retry = 1;
  qp->comp.timeout = 0;
 } else {
  qp->comp.timeout_retry = 0;
 }

 if (qp->req.need_retry)
  goto exit;

 state = 133;

 while (1) {
  pr_debug("qp#%d state = %s\n", qp_num(qp),
    comp_state_name[state]);
  switch (state) {
  case 133:
   skb = skb_dequeue(&qp->resp_pkts);
   if (skb) {
    pkt = SKB_TO_PKT(skb);
    qp->comp.timeout_retry = 0;
   }
   state = 132;
   break;

  case 132:
   state = get_wqe(qp, pkt, &wqe);
   break;

  case 140:
   state = check_psn(qp, pkt, wqe);
   break;

  case 141:
   state = check_ack(qp, pkt, wqe);
   break;

  case 131:
   state = do_read(qp, pkt, wqe);
   break;

  case 142:
   state = do_atomic(qp, pkt, wqe);
   break;

  case 128:
   if (wqe->state == wqe_state_pending &&
       wqe->last_psn == pkt->psn)
    state = 139;
   else
    state = 129;
   break;

  case 139:
   state = complete_ack(qp, pkt, wqe);
   break;

  case 138:
   state = complete_wqe(qp, pkt, wqe);
   break;

  case 129:
   if (pkt->mask & RXE_END_MASK)
    qp->comp.opcode = -1;
   else
    qp->comp.opcode = pkt->opcode;

   if (psn_compare(pkt->psn, qp->comp.psn) >= 0)
    qp->comp.psn = (pkt->psn + 1) & BTH_PSN_MASK;

   if (qp->req.wait_psn) {
    qp->req.wait_psn = 0;
    rxe_run_task(&qp->req.task, 1);
   }

   state = 137;
   break;

  case 137:
   if (pkt) {
    rxe_drop_ref(pkt->qp);
    kfree_skb(skb);
    skb = ((void*)0);
   }
   goto done;

  case 134:
   if (qp->comp.timeout_retry && wqe) {
    state = 135;
    break;
   }
   if ((qp_type(qp) == IB_QPT_RC) &&
       (qp->req.state == QP_STATE_READY) &&
       (psn_compare(qp->req.psn, qp->comp.psn) > 0) &&
       qp->qp_timeout_jiffies)
    mod_timer(&qp->retrans_timer,
       jiffies + qp->qp_timeout_jiffies);
   goto exit;

  case 135:
   if (!wqe || (wqe->state == wqe_state_posted)) {
    goto exit;
   }




   if (qp->comp.started_retry &&
       !qp->comp.timeout_retry) {
    if (pkt) {
     rxe_drop_ref(pkt->qp);
     kfree_skb(skb);
     skb = ((void*)0);
    }

    goto done;
   }

   if (qp->comp.retry_cnt > 0) {
    if (qp->comp.retry_cnt != 7)
     qp->comp.retry_cnt--;





    if (psn_compare(qp->req.psn,
      qp->comp.psn) > 0) {



     rxe_counter_inc(rxe,
       RXE_CNT_COMP_RETRY);
     qp->req.need_retry = 1;
     qp->comp.started_retry = 1;
     rxe_run_task(&qp->req.task, 1);
    }

    if (pkt) {
     rxe_drop_ref(pkt->qp);
     kfree_skb(skb);
     skb = ((void*)0);
    }

    goto done;

   } else {
    rxe_counter_inc(rxe, RXE_CNT_RETRY_EXCEEDED);
    wqe->status = IB_WC_RETRY_EXC_ERR;
    state = 136;
   }
   break;

  case 130:
   if (qp->comp.rnr_retry > 0) {
    if (qp->comp.rnr_retry != 7)
     qp->comp.rnr_retry--;

    qp->req.need_retry = 1;
    pr_debug("qp#%d set rnr nak timer\n",
      qp_num(qp));
    mod_timer(&qp->rnr_nak_timer,
       jiffies + rnrnak_jiffies(aeth_syn(pkt)
      & ~AETH_TYPE_MASK));
    rxe_drop_ref(pkt->qp);
    kfree_skb(skb);
    skb = ((void*)0);
    goto exit;
   } else {
    rxe_counter_inc(rxe,
      RXE_CNT_RNR_RETRY_EXCEEDED);
    wqe->status = IB_WC_RNR_RETRY_EXC_ERR;
    state = 136;
   }
   break;

  case 136:
   WARN_ON_ONCE(wqe->status == IB_WC_SUCCESS);
   do_complete(qp, wqe);
   rxe_qp_error(qp);

   if (pkt) {
    rxe_drop_ref(pkt->qp);
    kfree_skb(skb);
    skb = ((void*)0);
   }

   goto exit;
  }
 }

exit:



 WARN_ON_ONCE(skb);
 rxe_drop_ref(qp);
 return -EAGAIN;

done:



 WARN_ON_ONCE(skb);
 rxe_drop_ref(qp);
 return 0;
}
