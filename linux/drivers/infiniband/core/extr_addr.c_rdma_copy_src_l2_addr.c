
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_dev_addr {int bound_dev_if; int broadcast; int src_dev_addr; int dev_type; } ;
struct net_device {int ifindex; int broadcast; int dev_addr; int type; } ;


 int MAX_ADDR_LEN ;
 int memcpy (int ,int ,int ) ;

void rdma_copy_src_l2_addr(struct rdma_dev_addr *dev_addr,
      const struct net_device *dev)
{
 dev_addr->dev_type = dev->type;
 memcpy(dev_addr->src_dev_addr, dev->dev_addr, MAX_ADDR_LEN);
 memcpy(dev_addr->broadcast, dev->broadcast, MAX_ADDR_LEN);
 dev_addr->bound_dev_if = dev->ifindex;
}
