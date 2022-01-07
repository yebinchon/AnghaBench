
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct net_device {int mtu; } ;
struct ib_port_attr {int state; int port_cap_flags; int ip_gids; int pkey_tbl_len; int max_msg_sz; int max_vl_num; int active_width; int active_speed; scalar_t__ qkey_viol_cntr; scalar_t__ bad_pkey_cntr; int gid_tbl_len; scalar_t__ sm_sl; scalar_t__ sm_lid; scalar_t__ lmc; scalar_t__ lid; int active_mtu; int max_mtu; int phys_state; } ;
struct ib_device {int dummy; } ;
typedef enum ib_port_state { ____Placeholder_ib_port_state } ib_port_state ;


 int IB_MTU_4096 ;
 int IB_PORT_ACTIVE ;
 int IB_PORT_CM_SUP ;
 int IB_PORT_DEVICE_MGMT_SUP ;
 int IB_PORT_DOWN ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int IB_PORT_REINIT_SUP ;
 int IB_PORT_VENDOR_CLASS_SUP ;
 int OCRDMA_MAX_SGID ;
 int get_link_speed_and_width (struct ocrdma_dev*,int *,int *) ;
 struct ocrdma_dev* get_ocrdma_dev (struct ib_device*) ;
 int iboe_get_mtu (int ) ;
 scalar_t__ netif_oper_up (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

int ocrdma_query_port(struct ib_device *ibdev,
        u8 port, struct ib_port_attr *props)
{
 enum ib_port_state port_state;
 struct ocrdma_dev *dev;
 struct net_device *netdev;


 dev = get_ocrdma_dev(ibdev);
 netdev = dev->nic_info.netdev;
 if (netif_running(netdev) && netif_oper_up(netdev)) {
  port_state = IB_PORT_ACTIVE;
  props->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
 } else {
  port_state = IB_PORT_DOWN;
  props->phys_state = IB_PORT_PHYS_STATE_DISABLED;
 }
 props->max_mtu = IB_MTU_4096;
 props->active_mtu = iboe_get_mtu(netdev->mtu);
 props->lid = 0;
 props->lmc = 0;
 props->sm_lid = 0;
 props->sm_sl = 0;
 props->state = port_state;
 props->port_cap_flags = IB_PORT_CM_SUP | IB_PORT_REINIT_SUP |
    IB_PORT_DEVICE_MGMT_SUP |
    IB_PORT_VENDOR_CLASS_SUP;
 props->ip_gids = 1;
 props->gid_tbl_len = OCRDMA_MAX_SGID;
 props->pkey_tbl_len = 1;
 props->bad_pkey_cntr = 0;
 props->qkey_viol_cntr = 0;
 get_link_speed_and_width(dev, &props->active_speed,
     &props->active_width);
 props->max_msg_sz = 0x80000000;
 props->max_vl_num = 4;
 return 0;
}
