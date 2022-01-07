
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct rxe_qp* mr; } ;
struct rxe_qp {TYPE_1__ resp; int req_pkts; } ;
struct rxe_pkt_info {int dummy; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 int RESPST_DONE ;
 int kfree_skb (struct sk_buff*) ;
 int rxe_drop_ref (struct rxe_qp*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static enum resp_states cleanup(struct rxe_qp *qp,
    struct rxe_pkt_info *pkt)
{
 struct sk_buff *skb;

 if (pkt) {
  skb = skb_dequeue(&qp->req_pkts);
  rxe_drop_ref(qp);
  kfree_skb(skb);
 }

 if (qp->resp.mr) {
  rxe_drop_ref(qp->resp.mr);
  qp->resp.mr = ((void*)0);
 }

 return RESPST_DONE;
}
