
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rdma_dev_net {int nl_sock; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int nlmsg_multicast (int ,struct sk_buff*,int ,unsigned int,int ) ;
 struct rdma_dev_net* rdma_net_to_dev_net (struct net*) ;

int rdma_nl_multicast(struct net *net, struct sk_buff *skb,
        unsigned int group, gfp_t flags)
{
 struct rdma_dev_net *rnet = rdma_net_to_dev_net(net);

 return nlmsg_multicast(rnet->nl_sock, skb, 0, group, flags);
}
