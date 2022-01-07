
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 int _roce_del_all_netdev_gids ;
 int handle_netdev_upper (struct ib_device*,int ,void*,int ) ;

__attribute__((used)) static void del_netdev_upper_ips(struct ib_device *ib_dev, u8 port,
     struct net_device *rdma_ndev, void *cookie)
{
 handle_netdev_upper(ib_dev, port, cookie, _roce_del_all_netdev_gids);
}
