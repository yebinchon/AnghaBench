
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; int sk; int destructor; } ;
struct rxe_pkt_info {TYPE_3__* qp; } ;
struct TYPE_7__ {int skb_out; TYPE_1__* sk; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int sk; } ;


 int EAGAIN ;
 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int dev_net (int ) ;
 scalar_t__ htons (int ) ;
 int ip6_local_out (int ,int ,struct sk_buff*) ;
 int ip_local_out (int ,int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int net_xmit_eval (int) ;
 int pr_debug (char*,int) ;
 int pr_err (char*,scalar_t__) ;
 int rxe_add_ref (TYPE_3__*) ;
 int rxe_drop_ref (TYPE_3__*) ;
 int rxe_skb_tx_dtor ;
 TYPE_2__* skb_dst (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

int rxe_send(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
 int err;

 skb->destructor = rxe_skb_tx_dtor;
 skb->sk = pkt->qp->sk->sk;

 rxe_add_ref(pkt->qp);
 atomic_inc(&pkt->qp->skb_out);

 if (skb->protocol == htons(ETH_P_IP)) {
  err = ip_local_out(dev_net(skb_dst(skb)->dev), skb->sk, skb);
 } else if (skb->protocol == htons(ETH_P_IPV6)) {
  err = ip6_local_out(dev_net(skb_dst(skb)->dev), skb->sk, skb);
 } else {
  pr_err("Unknown layer 3 protocol: %d\n", skb->protocol);
  atomic_dec(&pkt->qp->skb_out);
  rxe_drop_ref(pkt->qp);
  kfree_skb(skb);
  return -EINVAL;
 }

 if (unlikely(net_xmit_eval(err))) {
  pr_debug("error sending packet: %d\n", err);
  return -EAGAIN;
 }

 return 0;
}
