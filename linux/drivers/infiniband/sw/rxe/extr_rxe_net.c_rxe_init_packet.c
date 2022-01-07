
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct sk_buff {void* protocol; struct net_device const* dev; } ;
struct rxe_pkt_info {int port_num; int mask; int hdr; struct rxe_dev* rxe; } ;
struct rxe_dev {int ib_dev; } ;
struct TYPE_2__ {int sgid_index; } ;
struct rxe_av {scalar_t__ network_type; TYPE_1__ grh; } ;
typedef struct net_device const net_device ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
typedef struct net_device ib_gid_attr ;


 int ETH_HLEN ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (struct net_device const*) ;
 scalar_t__ LL_RESERVED_SPACE (struct net_device const*) ;
 scalar_t__ RDMA_NETWORK_IPV4 ;
 int RXE_GRH_MASK ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 void* htons (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net_device* rdma_get_gid_attr (int *,int const,int ) ;
 int rdma_put_gid_attr (struct net_device const*) ;
 struct net_device* rdma_read_gid_attr_ndev_rcu (struct net_device const*) ;
 int skb_put_zero (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

struct sk_buff *rxe_init_packet(struct rxe_dev *rxe, struct rxe_av *av,
    int paylen, struct rxe_pkt_info *pkt)
{
 unsigned int hdr_len;
 struct sk_buff *skb = ((void*)0);
 struct net_device *ndev;
 const struct ib_gid_attr *attr;
 const int port_num = 1;

 attr = rdma_get_gid_attr(&rxe->ib_dev, port_num, av->grh.sgid_index);
 if (IS_ERR(attr))
  return ((void*)0);

 if (av->network_type == RDMA_NETWORK_IPV4)
  hdr_len = ETH_HLEN + sizeof(struct udphdr) +
   sizeof(struct iphdr);
 else
  hdr_len = ETH_HLEN + sizeof(struct udphdr) +
   sizeof(struct ipv6hdr);

 rcu_read_lock();
 ndev = rdma_read_gid_attr_ndev_rcu(attr);
 if (IS_ERR(ndev)) {
  rcu_read_unlock();
  goto out;
 }
 skb = alloc_skb(paylen + hdr_len + LL_RESERVED_SPACE(ndev),
   GFP_ATOMIC);

 if (unlikely(!skb)) {
  rcu_read_unlock();
  goto out;
 }

 skb_reserve(skb, hdr_len + LL_RESERVED_SPACE(ndev));


 skb->dev = ndev;
 rcu_read_unlock();

 if (av->network_type == RDMA_NETWORK_IPV4)
  skb->protocol = htons(ETH_P_IP);
 else
  skb->protocol = htons(ETH_P_IPV6);

 pkt->rxe = rxe;
 pkt->port_num = port_num;
 pkt->hdr = skb_put_zero(skb, paylen);
 pkt->mask |= RXE_GRH_MASK;

out:
 rdma_put_gid_attr(attr);
 return skb;
}
