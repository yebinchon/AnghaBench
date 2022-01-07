
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_net {int nl_sock; } ;


 int init_net ;
 int netlink_has_listeners (int ,unsigned int) ;
 struct rdma_dev_net* rdma_net_to_dev_net (int *) ;

bool rdma_nl_chk_listeners(unsigned int group)
{
 struct rdma_dev_net *rnet = rdma_net_to_dev_net(&init_net);

 return netlink_has_listeners(rnet->nl_sock, group);
}
