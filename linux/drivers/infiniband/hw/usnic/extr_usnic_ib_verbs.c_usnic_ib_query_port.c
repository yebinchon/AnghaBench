
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usnic_ib_dev {int usdev_lock; TYPE_1__* ufdev; } ;
struct ib_port_attr {int lmc; int gid_tbl_len; int pkey_tbl_len; int max_vl_num; int max_msg_sz; int active_mtu; int max_mtu; scalar_t__ qkey_viol_cntr; scalar_t__ bad_pkey_cntr; scalar_t__ port_cap_flags; int phys_state; int state; scalar_t__ sm_sl; scalar_t__ sm_lid; scalar_t__ lid; int active_width; int active_speed; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int mtu; int inaddr; int link_up; } ;


 int EINVAL ;
 int IB_MTU_4096 ;
 int IB_PORT_ACTIVE ;
 int IB_PORT_DOWN ;
 int IB_PORT_INIT ;
 int IB_PORT_PHYS_STATE_DISABLED ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING ;
 scalar_t__ ib_get_eth_speed (struct ib_device*,int ,int *,int *) ;
 int iboe_get_mtu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usnic_ib_dev* to_usdev (struct ib_device*) ;
 int usnic_dbg (char*) ;

int usnic_ib_query_port(struct ib_device *ibdev, u8 port,
    struct ib_port_attr *props)
{
 struct usnic_ib_dev *us_ibdev = to_usdev(ibdev);

 usnic_dbg("\n");

 if (ib_get_eth_speed(ibdev, port, &props->active_speed,
        &props->active_width))
  return -EINVAL;






 mutex_lock(&us_ibdev->usdev_lock);


 props->lid = 0;
 props->lmc = 1;
 props->sm_lid = 0;
 props->sm_sl = 0;

 if (!us_ibdev->ufdev->link_up) {
  props->state = IB_PORT_DOWN;
  props->phys_state = IB_PORT_PHYS_STATE_DISABLED;
 } else if (!us_ibdev->ufdev->inaddr) {
  props->state = IB_PORT_INIT;
  props->phys_state =
   IB_PORT_PHYS_STATE_PORT_CONFIGURATION_TRAINING;
 } else {
  props->state = IB_PORT_ACTIVE;
  props->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
 }

 props->port_cap_flags = 0;
 props->gid_tbl_len = 1;
 props->pkey_tbl_len = 1;
 props->bad_pkey_cntr = 0;
 props->qkey_viol_cntr = 0;
 props->max_mtu = IB_MTU_4096;
 props->active_mtu = iboe_get_mtu(us_ibdev->ufdev->mtu);

 props->max_msg_sz = us_ibdev->ufdev->mtu;
 props->max_vl_num = 1;
 mutex_unlock(&us_ibdev->usdev_lock);

 return 0;
}
