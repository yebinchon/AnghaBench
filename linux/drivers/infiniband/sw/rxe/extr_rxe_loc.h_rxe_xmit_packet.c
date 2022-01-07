
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_10__ {int task; } ;
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {int device; } ;
struct rxe_qp {TYPE_5__ comp; TYPE_3__ resp; TYPE_2__ req; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int mask; TYPE_4__* wqe; } ;
struct rxe_dev {int xmit_errors; } ;
struct TYPE_9__ {int state; } ;


 scalar_t__ IB_QPT_RC ;
 scalar_t__ QP_STATE_READY ;
 int RXE_CNT_SEND_ERR ;
 int RXE_CNT_SENT_PKTS ;
 int RXE_END_MASK ;
 int RXE_LOOPBACK_MASK ;
 int RXE_REQ_MASK ;
 int SKB_TO_PKT (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,struct rxe_pkt_info*,int) ;
 int pr_info (char*) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int rxe_counter_inc (struct rxe_dev*,int ) ;
 int rxe_loopback (struct sk_buff*) ;
 int rxe_run_task (int *,int) ;
 int rxe_send (struct rxe_pkt_info*,struct sk_buff*) ;
 struct rxe_dev* to_rdev (int ) ;
 int wqe_state_done ;

__attribute__((used)) static inline int rxe_xmit_packet(struct rxe_qp *qp, struct rxe_pkt_info *pkt,
      struct sk_buff *skb)
{
 int err;
 int is_request = pkt->mask & RXE_REQ_MASK;
 struct rxe_dev *rxe = to_rdev(qp->ibqp.device);

 if ((is_request && (qp->req.state != QP_STATE_READY)) ||
     (!is_request && (qp->resp.state != QP_STATE_READY))) {
  pr_info("Packet dropped. QP is not in ready state\n");
  goto drop;
 }

 if (pkt->mask & RXE_LOOPBACK_MASK) {
  memcpy(SKB_TO_PKT(skb), pkt, sizeof(*pkt));
  rxe_loopback(skb);
  err = 0;
 } else {
  err = rxe_send(pkt, skb);
 }

 if (err) {
  rxe->xmit_errors++;
  rxe_counter_inc(rxe, RXE_CNT_SEND_ERR);
  return err;
 }

 if ((qp_type(qp) != IB_QPT_RC) &&
     (pkt->mask & RXE_END_MASK)) {
  pkt->wqe->state = wqe_state_done;
  rxe_run_task(&qp->comp.task, 1);
 }

 rxe_counter_inc(rxe, RXE_CNT_SENT_PKTS);
 goto done;

drop:
 kfree_skb(skb);
 err = 0;
done:
 return err;
}
