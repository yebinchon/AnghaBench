
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ qkey_viol_cntr; int port_cap_flags; } ;
struct rxe_port {TYPE_1__ attr; } ;
struct rxe_dev {struct rxe_port port; } ;
struct ib_port_modify {int clr_port_cap_mask; int set_port_cap_mask; } ;
struct ib_device {int dummy; } ;


 int IB_PORT_RESET_QKEY_CNTR ;
 struct rxe_dev* to_rdev (struct ib_device*) ;

__attribute__((used)) static int rxe_modify_port(struct ib_device *dev,
      u8 port_num, int mask, struct ib_port_modify *attr)
{
 struct rxe_dev *rxe = to_rdev(dev);
 struct rxe_port *port;

 port = &rxe->port;

 port->attr.port_cap_flags |= attr->set_port_cap_mask;
 port->attr.port_cap_flags &= ~attr->clr_port_cap_mask;

 if (mask & IB_PORT_RESET_QKEY_CNTR)
  port->attr.qkey_viol_cntr = 0;

 return 0;
}
