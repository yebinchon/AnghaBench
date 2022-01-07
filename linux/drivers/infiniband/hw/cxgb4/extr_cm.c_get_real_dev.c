
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ rdma_vlan_dev_real_dev (struct net_device*) ;

__attribute__((used)) static struct net_device *get_real_dev(struct net_device *egress_dev)
{
 return rdma_vlan_dev_real_dev(egress_dev) ? : egress_dev;
}
