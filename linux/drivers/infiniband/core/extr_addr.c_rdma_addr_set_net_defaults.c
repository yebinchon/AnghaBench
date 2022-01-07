
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_addr {scalar_t__ bound_dev_if; int * net; } ;


 int init_net ;

__attribute__((used)) static void rdma_addr_set_net_defaults(struct rdma_dev_addr *addr)
{
 addr->net = &init_net;
 addr->bound_dev_if = 0;
}
