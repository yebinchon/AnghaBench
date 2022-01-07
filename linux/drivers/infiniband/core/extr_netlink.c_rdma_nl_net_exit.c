
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_net {int nl_sock; } ;


 int netlink_kernel_release (int ) ;

void rdma_nl_net_exit(struct rdma_dev_net *rnet)
{
 netlink_kernel_release(rnet->nl_sock);
}
