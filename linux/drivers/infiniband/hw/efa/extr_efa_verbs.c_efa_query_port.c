
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {int lmc; int gid_tbl_len; int pkey_tbl_len; int max_vl_num; int max_msg_sz; void* active_mtu; void* max_mtu; int active_width; int active_speed; int phys_state; int state; } ;
struct ib_device {int dummy; } ;
struct efa_dev {int mtu; } ;


 int IB_PORT_ACTIVE ;
 int IB_PORT_PHYS_STATE_LINK_UP ;
 int IB_SPEED_EDR ;
 int IB_WIDTH_4X ;
 void* ib_mtu_int_to_enum (int ) ;
 struct efa_dev* to_edev (struct ib_device*) ;

int efa_query_port(struct ib_device *ibdev, u8 port,
     struct ib_port_attr *props)
{
 struct efa_dev *dev = to_edev(ibdev);

 props->lmc = 1;

 props->state = IB_PORT_ACTIVE;
 props->phys_state = IB_PORT_PHYS_STATE_LINK_UP;
 props->gid_tbl_len = 1;
 props->pkey_tbl_len = 1;
 props->active_speed = IB_SPEED_EDR;
 props->active_width = IB_WIDTH_4X;
 props->max_mtu = ib_mtu_int_to_enum(dev->mtu);
 props->active_mtu = ib_mtu_int_to_enum(dev->mtu);
 props->max_msg_sz = dev->mtu;
 props->max_vl_num = 1;

 return 0;
}
