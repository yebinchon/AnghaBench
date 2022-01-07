
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rdma_dev_net {int nl_sock; } ;
struct net {int dummy; } ;


 int MSG_DONTWAIT ;
 int netlink_unicast (int ,struct sk_buff*,int ,int ) ;
 struct rdma_dev_net* rdma_net_to_dev_net (struct net*) ;

int rdma_nl_unicast(struct net *net, struct sk_buff *skb, u32 pid)
{
 struct rdma_dev_net *rnet = rdma_net_to_dev_net(net);
 int err;

 err = netlink_unicast(rnet->nl_sock, skb, pid, MSG_DONTWAIT);
 return (err < 0) ? err : 0;
}
