
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ res; } ;
struct rxe_qp {TYPE_1__ resp; int req_pkts; } ;
struct rxe_pkt_info {int dummy; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 scalar_t__ QP_STATE_ERROR ;
 int RESPST_CHK_PSN ;
 int RESPST_CHK_RESOURCE ;
 int RESPST_EXIT ;
 int RESPST_READ_REPLY ;
 struct rxe_pkt_info* SKB_TO_PKT (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int rxe_drop_ref (struct rxe_qp*) ;
 struct sk_buff* skb_dequeue (int *) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static inline enum resp_states get_req(struct rxe_qp *qp,
           struct rxe_pkt_info **pkt_p)
{
 struct sk_buff *skb;

 if (qp->resp.state == QP_STATE_ERROR) {
  while ((skb = skb_dequeue(&qp->req_pkts))) {
   rxe_drop_ref(qp);
   kfree_skb(skb);
  }


  return RESPST_CHK_RESOURCE;
 }

 skb = skb_peek(&qp->req_pkts);
 if (!skb)
  return RESPST_EXIT;

 *pkt_p = SKB_TO_PKT(skb);

 return (qp->resp.res) ? RESPST_READ_REPLY : RESPST_CHK_PSN;
}
