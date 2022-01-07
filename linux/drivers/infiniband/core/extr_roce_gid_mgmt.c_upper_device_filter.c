
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void net_device ;
struct ib_device {int dummy; } ;


 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdma_is_upper_dev_rcu (void*,void*) ;

__attribute__((used)) static bool upper_device_filter(struct ib_device *ib_dev, u8 port,
    struct net_device *rdma_ndev, void *cookie)
{
 bool res;

 if (!rdma_ndev)
  return 0;

 if (rdma_ndev == cookie)
  return 1;

 rcu_read_lock();
 res = rdma_is_upper_dev_rcu(rdma_ndev, cookie);
 rcu_read_unlock();

 return res;
}
