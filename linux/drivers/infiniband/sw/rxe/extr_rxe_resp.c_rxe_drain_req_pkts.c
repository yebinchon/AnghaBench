
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ queue; } ;
struct rxe_qp {TYPE_1__ rq; int srq; int req_pkts; } ;


 int advance_consumer (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ queue_head (scalar_t__) ;
 int rxe_drop_ref (struct rxe_qp*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void rxe_drain_req_pkts(struct rxe_qp *qp, bool notify)
{
 struct sk_buff *skb;

 while ((skb = skb_dequeue(&qp->req_pkts))) {
  rxe_drop_ref(qp);
  kfree_skb(skb);
 }

 if (notify)
  return;

 while (!qp->srq && qp->rq.queue && queue_head(qp->rq.queue))
  advance_consumer(qp->rq.queue);
}
