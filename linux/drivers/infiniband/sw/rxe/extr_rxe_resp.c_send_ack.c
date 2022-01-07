
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rxe_qp {int dummy; } ;
struct rxe_pkt_info {int dummy; } ;


 int ENOMEM ;
 int IB_OPCODE_RC_ACKNOWLEDGE ;
 int pr_err_ratelimited (char*) ;
 struct sk_buff* prepare_ack_packet (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_pkt_info*,int ,int ,int ,int ,int *) ;
 int rxe_xmit_packet (struct rxe_qp*,struct rxe_pkt_info*,struct sk_buff*) ;

__attribute__((used)) static int send_ack(struct rxe_qp *qp, struct rxe_pkt_info *pkt,
      u8 syndrome, u32 psn)
{
 int err = 0;
 struct rxe_pkt_info ack_pkt;
 struct sk_buff *skb;

 skb = prepare_ack_packet(qp, pkt, &ack_pkt, IB_OPCODE_RC_ACKNOWLEDGE,
     0, psn, syndrome, ((void*)0));
 if (!skb) {
  err = -ENOMEM;
  goto err1;
 }

 err = rxe_xmit_packet(qp, &ack_pkt, skb);
 if (err)
  pr_err_ratelimited("Failed sending ack\n");

err1:
 return err;
}
