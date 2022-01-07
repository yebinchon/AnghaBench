
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct siw_device {scalar_t__ state; TYPE_1__* netdev; } ;
struct ib_port_attr {int active_speed; int active_width; int gid_tbl_len; int max_msg_sz; int pkey_tbl_len; int port_cap_flags; scalar_t__ state; int phys_state; int max_mtu; int active_mtu; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int mtu; } ;


 scalar_t__ IB_PORT_ACTIVE ;
 int IB_PORT_CM_SUP ;
 int IB_PORT_DEVICE_MGMT_SUP ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int ib_mtu_int_to_enum (int ) ;
 int memset (struct ib_port_attr*,int ,int) ;
 struct siw_device* to_siw_dev (struct ib_device*) ;

int siw_query_port(struct ib_device *base_dev, u8 port,
     struct ib_port_attr *attr)
{
 struct siw_device *sdev = to_siw_dev(base_dev);

 memset(attr, 0, sizeof(*attr));

 attr->active_mtu = attr->max_mtu;
 attr->active_speed = 2;
 attr->active_width = 2;
 attr->gid_tbl_len = 1;
 attr->max_msg_sz = -1;
 attr->max_mtu = ib_mtu_int_to_enum(sdev->netdev->mtu);
 attr->phys_state = sdev->state == IB_PORT_ACTIVE ?
  IB_PORT_PHYS_STATE_LINK_UP : IB_PORT_PHYS_STATE_DISABLED;
 attr->pkey_tbl_len = 1;
 attr->port_cap_flags = IB_PORT_CM_SUP | IB_PORT_DEVICE_MGMT_SUP;
 attr->state = sdev->state;
 return 0;
}
