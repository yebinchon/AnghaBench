
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {int lid; int port_cap_flags; int gid_tbl_len; int pkey_tbl_len; int active_speed; int max_msg_sz; int active_width; } ;
struct ib_device {int dummy; } ;


 int I40IW_MAX_OUTBOUND_MESSAGE_SIZE ;
 int IB_PORT_BOOT_MGMT_SUP ;
 int IB_PORT_CM_SUP ;
 int IB_PORT_REINIT_SUP ;
 int IB_PORT_VENDOR_CLASS_SUP ;
 int IB_WIDTH_4X ;

__attribute__((used)) static int i40iw_query_port(struct ib_device *ibdev,
       u8 port,
       struct ib_port_attr *props)
{
 props->lid = 1;
 props->port_cap_flags = IB_PORT_CM_SUP | IB_PORT_REINIT_SUP |
  IB_PORT_VENDOR_CLASS_SUP | IB_PORT_BOOT_MGMT_SUP;
 props->gid_tbl_len = 1;
 props->pkey_tbl_len = 1;
 props->active_width = IB_WIDTH_4X;
 props->active_speed = 1;
 props->max_msg_sz = I40IW_MAX_OUTBOUND_MESSAGE_SIZE;
 return 0;
}
