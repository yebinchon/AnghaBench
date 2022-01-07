
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
struct sk_buff {scalar_t__ protocol; int dev; } ;
struct rxe_dev {int ib_dev; } ;
struct in6_addr {int dummy; } ;
struct ib_gid_attr {int dummy; } ;
struct TYPE_4__ {int daddr; } ;
struct TYPE_3__ {int daddr; } ;


 int ETH_P_IP ;
 int IB_GID_TYPE_ROCE_UDP_ENCAP ;
 scalar_t__ IS_ERR (struct ib_gid_attr const*) ;
 int PTR_ERR (struct ib_gid_attr const*) ;
 scalar_t__ htons (int ) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int ipv6_addr_set_v4mapped (int ,struct in6_addr*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 struct ib_gid_attr* rdma_find_gid_by_port (int *,union ib_gid*,int ,int,int ) ;
 int rdma_put_gid_attr (struct ib_gid_attr const*) ;

__attribute__((used)) static int rxe_match_dgid(struct rxe_dev *rxe, struct sk_buff *skb)
{
 const struct ib_gid_attr *gid_attr;
 union ib_gid dgid;
 union ib_gid *pdgid;

 if (skb->protocol == htons(ETH_P_IP)) {
  ipv6_addr_set_v4mapped(ip_hdr(skb)->daddr,
           (struct in6_addr *)&dgid);
  pdgid = &dgid;
 } else {
  pdgid = (union ib_gid *)&ipv6_hdr(skb)->daddr;
 }

 gid_attr = rdma_find_gid_by_port(&rxe->ib_dev, pdgid,
      IB_GID_TYPE_ROCE_UDP_ENCAP,
      1, skb->dev);
 if (IS_ERR(gid_attr))
  return PTR_ERR(gid_attr);

 rdma_put_gid_attr(gid_attr);
 return 0;
}
