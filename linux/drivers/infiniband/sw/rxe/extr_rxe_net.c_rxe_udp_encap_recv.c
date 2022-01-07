
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct udphdr {int len; } ;
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct rxe_pkt_info {int port_num; scalar_t__ paylen; int mask; int * hdr; struct rxe_dev* rxe; } ;
struct rxe_dev {int ib_dev; } ;
struct net_device {int dummy; } ;


 int RXE_GRH_MASK ;
 struct rxe_pkt_info* SKB_TO_PKT (struct sk_buff*) ;
 scalar_t__ be16_to_cpu (int ) ;
 int ib_device_put (int *) ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_err (char*) ;
 struct rxe_dev* rxe_get_dev_from_net (struct net_device*) ;
 int rxe_rcv (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 struct net_device* vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static int rxe_udp_encap_recv(struct sock *sk, struct sk_buff *skb)
{
 struct udphdr *udph;
 struct net_device *ndev = skb->dev;
 struct net_device *rdev = ndev;
 struct rxe_dev *rxe = rxe_get_dev_from_net(ndev);
 struct rxe_pkt_info *pkt = SKB_TO_PKT(skb);

 if (!rxe && is_vlan_dev(rdev)) {
  rdev = vlan_dev_real_dev(ndev);
  rxe = rxe_get_dev_from_net(rdev);
 }
 if (!rxe)
  goto drop;

 if (skb_linearize(skb)) {
  pr_err("skb_linearize failed\n");
  ib_device_put(&rxe->ib_dev);
  goto drop;
 }

 udph = udp_hdr(skb);
 pkt->rxe = rxe;
 pkt->port_num = 1;
 pkt->hdr = (u8 *)(udph + 1);
 pkt->mask = RXE_GRH_MASK;
 pkt->paylen = be16_to_cpu(udph->len) - sizeof(*udph);

 rxe_rcv(skb);





 ib_device_put(&rxe->ib_dev);

 return 0;
drop:
 kfree_skb(skb);

 return 0;
}
