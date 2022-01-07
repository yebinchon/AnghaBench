
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rxe_pkt_info {int mask; int qp; } ;


 int RXE_REQ_MASK ;
 int rxe_comp_queue_pkt (int ,struct sk_buff*) ;
 int rxe_resp_queue_pkt (int ,struct sk_buff*) ;

__attribute__((used)) static inline void rxe_rcv_pkt(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
 if (pkt->mask & RXE_REQ_MASK)
  rxe_resp_queue_pkt(pkt->qp, skb);
 else
  rxe_comp_queue_pkt(pkt->qp, skb);
}
