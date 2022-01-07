
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rdma_dev_addr {int net; scalar_t__ bound_dev_if; } ;
struct net_device {int dummy; } ;


 int ENODEV ;
 int IS_ERR (struct net_device*) ;
 int PTR_ERR_OR_ZERO (struct net_device*) ;
 struct net_device* dev_get_by_index (int ,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdma_copy_src_l2_addr (struct rdma_dev_addr*,struct net_device*) ;
 struct net_device* rdma_find_ndev_for_src_ip_rcu (int ,struct sockaddr const*) ;

int rdma_translate_ip(const struct sockaddr *addr,
        struct rdma_dev_addr *dev_addr)
{
 struct net_device *dev;

 if (dev_addr->bound_dev_if) {
  dev = dev_get_by_index(dev_addr->net, dev_addr->bound_dev_if);
  if (!dev)
   return -ENODEV;
  rdma_copy_src_l2_addr(dev_addr, dev);
  dev_put(dev);
  return 0;
 }

 rcu_read_lock();
 dev = rdma_find_ndev_for_src_ip_rcu(dev_addr->net, addr);
 if (!IS_ERR(dev))
  rdma_copy_src_l2_addr(dev_addr, dev);
 rcu_read_unlock();
 return PTR_ERR_OR_ZERO(dev);
}
