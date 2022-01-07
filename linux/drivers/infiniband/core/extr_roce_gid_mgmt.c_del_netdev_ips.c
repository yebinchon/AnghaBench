
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 int ib_cache_gid_del_all_netdev_gids (struct ib_device*,int ,void*) ;

__attribute__((used)) static void del_netdev_ips(struct ib_device *ib_dev, u8 port,
      struct net_device *rdma_ndev, void *cookie)
{
 ib_cache_gid_del_all_netdev_gids(ib_dev, port, cookie);
}
