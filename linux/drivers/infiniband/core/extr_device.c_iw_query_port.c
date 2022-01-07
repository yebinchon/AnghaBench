
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int mtu; } ;
struct in_device {scalar_t__ ifa_list; } ;
struct ib_port_attr {int phys_state; int state; int active_mtu; int max_mtu; } ;
struct TYPE_2__ {int (* query_port ) (struct ib_device*,int ,struct ib_port_attr*) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int ENODEV ;
 int IB_MTU_4096 ;
 int IB_PORT_ACTIVE ;
 int IB_PORT_DOWN ;
 int IB_PORT_INIT ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 int dev_put (struct net_device*) ;
 struct net_device* ib_device_get_netdev (struct ib_device*,int ) ;
 int ib_mtu_int_to_enum (int ) ;
 int memset (struct ib_port_attr*,int ,int) ;
 int netif_carrier_ok (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct ib_device*,int ,struct ib_port_attr*) ;

__attribute__((used)) static int iw_query_port(struct ib_device *device,
      u8 port_num,
      struct ib_port_attr *port_attr)
{
 struct in_device *inetdev;
 struct net_device *netdev;
 int err;

 memset(port_attr, 0, sizeof(*port_attr));

 netdev = ib_device_get_netdev(device, port_num);
 if (!netdev)
  return -ENODEV;

 port_attr->max_mtu = IB_MTU_4096;
 port_attr->active_mtu = ib_mtu_int_to_enum(netdev->mtu);

 if (!netif_carrier_ok(netdev)) {
  port_attr->state = IB_PORT_DOWN;
  port_attr->phys_state = IB_PORT_PHYS_STATE_DISABLED;
 } else {
  rcu_read_lock();
  inetdev = __in_dev_get_rcu(netdev);

  if (inetdev && inetdev->ifa_list) {
   port_attr->state = IB_PORT_ACTIVE;
   port_attr->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
  } else {
   port_attr->state = IB_PORT_INIT;
   port_attr->phys_state =
    IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING;
  }

  rcu_read_unlock();
 }

 dev_put(netdev);
 err = device->ops.query_port(device, port_num, port_attr);
 if (err)
  return err;

 return 0;
}
