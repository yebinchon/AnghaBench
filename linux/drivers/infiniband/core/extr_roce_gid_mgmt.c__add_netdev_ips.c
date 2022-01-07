
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_device {int dummy; } ;


 int CONFIG_IPV6 ;
 scalar_t__ IS_ENABLED (int ) ;
 int enum_netdev_ipv4_ips (struct ib_device*,int ,struct net_device*) ;
 int enum_netdev_ipv6_ips (struct ib_device*,int ,struct net_device*) ;

__attribute__((used)) static void _add_netdev_ips(struct ib_device *ib_dev, u8 port,
       struct net_device *ndev)
{
 enum_netdev_ipv4_ips(ib_dev, port, ndev);
 if (IS_ENABLED(CONFIG_IPV6))
  enum_netdev_ipv6_ips(ib_dev, port, ndev);
}
