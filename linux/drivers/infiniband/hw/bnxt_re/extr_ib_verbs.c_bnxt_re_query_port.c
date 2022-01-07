
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ib_port_attr {int port_cap_flags; int ip_gids; int max_vl_num; int active_width; int active_speed; scalar_t__ init_type_reply; scalar_t__ subnet_timeout; scalar_t__ sm_sl; scalar_t__ lmc; scalar_t__ sm_lid; scalar_t__ lid; int pkey_tbl_len; scalar_t__ qkey_viol_cntr; scalar_t__ bad_pkey_cntr; scalar_t__ max_msg_sz; int gid_tbl_len; int active_mtu; int max_mtu; int phys_state; int state; } ;
struct ib_device {int dummy; } ;
struct bnxt_qplib_dev_attr {int max_pkey; int max_sgid; } ;
struct bnxt_re_dev {int active_width; int active_speed; TYPE_1__* netdev; struct bnxt_qplib_dev_attr dev_attr; } ;
struct TYPE_3__ {int mtu; } ;


 scalar_t__ BNXT_RE_MAX_MR_SIZE_LOW ;
 int IB_MTU_4096 ;
 int IB_PORT_ACTIVE ;
 int IB_PORT_CM_SUP ;
 int IB_PORT_DEVICE_MGMT_SUP ;
 int IB_PORT_DOWN ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int IB_PORT_REINIT_SUP ;
 int IB_PORT_VENDOR_CLASS_SUP ;
 int iboe_get_mtu (int ) ;
 int memset (struct ib_port_attr*,int ,int) ;
 scalar_t__ netif_carrier_ok (TYPE_1__*) ;
 scalar_t__ netif_running (TYPE_1__*) ;
 struct bnxt_re_dev* to_bnxt_re_dev (struct ib_device*,struct ib_device*) ;

int bnxt_re_query_port(struct ib_device *ibdev, u8 port_num,
         struct ib_port_attr *port_attr)
{
 struct bnxt_re_dev *rdev = to_bnxt_re_dev(ibdev, ibdev);
 struct bnxt_qplib_dev_attr *dev_attr = &rdev->dev_attr;

 memset(port_attr, 0, sizeof(*port_attr));

 if (netif_running(rdev->netdev) && netif_carrier_ok(rdev->netdev)) {
  port_attr->state = IB_PORT_ACTIVE;
  port_attr->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
 } else {
  port_attr->state = IB_PORT_DOWN;
  port_attr->phys_state = IB_PORT_PHYS_STATE_DISABLED;
 }
 port_attr->max_mtu = IB_MTU_4096;
 port_attr->active_mtu = iboe_get_mtu(rdev->netdev->mtu);
 port_attr->gid_tbl_len = dev_attr->max_sgid;
 port_attr->port_cap_flags = IB_PORT_CM_SUP | IB_PORT_REINIT_SUP |
        IB_PORT_DEVICE_MGMT_SUP |
        IB_PORT_VENDOR_CLASS_SUP;
 port_attr->ip_gids = 1;

 port_attr->max_msg_sz = (u32)BNXT_RE_MAX_MR_SIZE_LOW;
 port_attr->bad_pkey_cntr = 0;
 port_attr->qkey_viol_cntr = 0;
 port_attr->pkey_tbl_len = dev_attr->max_pkey;
 port_attr->lid = 0;
 port_attr->sm_lid = 0;
 port_attr->lmc = 0;
 port_attr->max_vl_num = 4;
 port_attr->sm_sl = 0;
 port_attr->subnet_timeout = 0;
 port_attr->init_type_reply = 0;
 port_attr->active_speed = rdev->active_speed;
 port_attr->active_width = rdev->active_width;

 return 0;
}
