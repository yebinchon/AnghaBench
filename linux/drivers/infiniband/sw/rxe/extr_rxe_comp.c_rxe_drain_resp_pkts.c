
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rxe_send_wqe {int status; } ;
struct TYPE_2__ {int queue; } ;
struct rxe_qp {TYPE_1__ sq; int resp_pkts; } ;


 int IB_WC_WR_FLUSH_ERR ;
 int advance_consumer (int ) ;
 int do_complete (struct rxe_qp*,struct rxe_send_wqe*) ;
 int kfree_skb (struct sk_buff*) ;
 struct rxe_send_wqe* queue_head (int ) ;
 int rxe_drop_ref (struct rxe_qp*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void rxe_drain_resp_pkts(struct rxe_qp *qp, bool notify)
{
 struct sk_buff *skb;
 struct rxe_send_wqe *wqe;

 while ((skb = skb_dequeue(&qp->resp_pkts))) {
  rxe_drop_ref(qp);
  kfree_skb(skb);
 }

 while ((wqe = queue_head(qp->sq.queue))) {
  if (notify) {
   wqe->status = IB_WC_WR_FLUSH_ERR;
   do_complete(qp, wqe);
  } else {
   advance_consumer(qp->sq.queue);
  }
 }
}
