
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {scalar_t__ state; int phys_state; int active_width; int active_speed; } ;
struct rxe_port {struct ib_port_attr attr; } ;
struct rxe_dev {int usdev_lock; int ndev; struct rxe_port port; } ;
struct ib_device {int dummy; } ;


 scalar_t__ IB_PORT_ACTIVE ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int IB_PORT_PHYS_STATE_POLLING ;
 int IFF_UP ;
 int dev_get_flags (int ) ;
 int ib_get_eth_speed (struct ib_device*,int ,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rxe_dev* to_rdev (struct ib_device*) ;

__attribute__((used)) static int rxe_query_port(struct ib_device *dev,
     u8 port_num, struct ib_port_attr *attr)
{
 struct rxe_dev *rxe = to_rdev(dev);
 struct rxe_port *port;
 int rc;

 port = &rxe->port;


 *attr = port->attr;

 mutex_lock(&rxe->usdev_lock);
 rc = ib_get_eth_speed(dev, port_num, &attr->active_speed,
         &attr->active_width);

 if (attr->state == IB_PORT_ACTIVE)
  attr->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
 else if (dev_get_flags(rxe->ndev) & IFF_UP)
  attr->phys_state = IB_PORT_PHYS_STATE_POLLING;
 else
  attr->phys_state = IB_PORT_PHYS_STATE_DISABLED;

 mutex_unlock(&rxe->usdev_lock);

 return rc;
}
