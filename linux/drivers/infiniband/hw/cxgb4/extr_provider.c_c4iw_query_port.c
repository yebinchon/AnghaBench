
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_attr {int port_cap_flags; int gid_tbl_len; int pkey_tbl_len; int active_width; int max_msg_sz; int active_speed; } ;
struct ib_device {int dummy; } ;


 int IB_PORT_BOOT_MGMT_SUP ;
 int IB_PORT_CM_SUP ;
 int IB_PORT_DEVICE_MGMT_SUP ;
 int IB_PORT_REINIT_SUP ;
 int IB_PORT_SNMP_TUNNEL_SUP ;
 int IB_PORT_VENDOR_CLASS_SUP ;
 int IB_SPEED_DDR ;
 int pr_debug (char*,struct ib_device*) ;

__attribute__((used)) static int c4iw_query_port(struct ib_device *ibdev, u8 port,
      struct ib_port_attr *props)
{
 pr_debug("ibdev %p\n", ibdev);

 props->port_cap_flags =
     IB_PORT_CM_SUP |
     IB_PORT_SNMP_TUNNEL_SUP |
     IB_PORT_REINIT_SUP |
     IB_PORT_DEVICE_MGMT_SUP |
     IB_PORT_VENDOR_CLASS_SUP | IB_PORT_BOOT_MGMT_SUP;
 props->gid_tbl_len = 1;
 props->pkey_tbl_len = 1;
 props->active_width = 2;
 props->active_speed = IB_SPEED_DDR;
 props->max_msg_sz = -1;

 return 0;
}
