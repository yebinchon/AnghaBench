
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_net {int dummy; } ;
struct net {int dummy; } ;


 struct rdma_dev_net* net_generic (struct net*,int ) ;
 int rdma_dev_net_id ;

__attribute__((used)) static inline struct rdma_dev_net *rdma_net_to_dev_net(struct net *net)
{
 return net_generic(net, rdma_dev_net_id);
}
