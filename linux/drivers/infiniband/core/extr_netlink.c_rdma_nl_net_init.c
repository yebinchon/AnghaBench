
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_sndtimeo; } ;
struct rdma_dev_net {struct sock* nl_sock; int net; } ;
struct netlink_kernel_cfg {int input; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 int HZ ;
 int NETLINK_RDMA ;
 struct sock* netlink_kernel_create (struct net*,int ,struct netlink_kernel_cfg*) ;
 int rdma_nl_rcv ;
 struct net* read_pnet (int *) ;

int rdma_nl_net_init(struct rdma_dev_net *rnet)
{
 struct net *net = read_pnet(&rnet->net);
 struct netlink_kernel_cfg cfg = {
  .input = rdma_nl_rcv,
 };
 struct sock *nls;

 nls = netlink_kernel_create(net, NETLINK_RDMA, &cfg);
 if (!nls)
  return -ENOMEM;

 nls->sk_sndtimeo = 10 * HZ;
 rnet->nl_sock = nls;
 return 0;
}
