
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phys_state; int active_speed; int active_width; int init_type_reply; int subnet_timeout; int sm_sl; int max_vl_num; int lmc; int sm_lid; int lid; int pkey_tbl_len; int qkey_viol_cntr; int bad_pkey_cntr; int max_msg_sz; int port_cap_flags; int gid_tbl_len; int active_mtu; int max_mtu; int state; } ;
struct rxe_port {int subnet_prefix; int mtu_cap; TYPE_1__ attr; } ;


 int IB_MTU_256 ;
 int IB_MTU_4096 ;
 int IB_PORT_DOWN ;
 int RXE_PORT_ACTIVE_SPEED ;
 int RXE_PORT_ACTIVE_WIDTH ;
 int RXE_PORT_BAD_PKEY_CNTR ;
 int RXE_PORT_GID_TBL_LEN ;
 int RXE_PORT_INIT_TYPE_REPLY ;
 int RXE_PORT_LID ;
 int RXE_PORT_LMC ;
 int RXE_PORT_MAX_MSG_SZ ;
 int RXE_PORT_MAX_VL_NUM ;
 int RXE_PORT_PHYS_STATE ;
 int RXE_PORT_PKEY_TBL_LEN ;
 int RXE_PORT_PORT_CAP_FLAGS ;
 int RXE_PORT_QKEY_VIOL_CNTR ;
 int RXE_PORT_SM_LID ;
 int RXE_PORT_SM_SL ;
 int RXE_PORT_SUBNET_PREFIX ;
 int RXE_PORT_SUBNET_TIMEOUT ;
 int cpu_to_be64 (int ) ;
 int ib_mtu_enum_to_int (int ) ;

__attribute__((used)) static int rxe_init_port_param(struct rxe_port *port)
{
 port->attr.state = IB_PORT_DOWN;
 port->attr.max_mtu = IB_MTU_4096;
 port->attr.active_mtu = IB_MTU_256;
 port->attr.gid_tbl_len = RXE_PORT_GID_TBL_LEN;
 port->attr.port_cap_flags = RXE_PORT_PORT_CAP_FLAGS;
 port->attr.max_msg_sz = RXE_PORT_MAX_MSG_SZ;
 port->attr.bad_pkey_cntr = RXE_PORT_BAD_PKEY_CNTR;
 port->attr.qkey_viol_cntr = RXE_PORT_QKEY_VIOL_CNTR;
 port->attr.pkey_tbl_len = RXE_PORT_PKEY_TBL_LEN;
 port->attr.lid = RXE_PORT_LID;
 port->attr.sm_lid = RXE_PORT_SM_LID;
 port->attr.lmc = RXE_PORT_LMC;
 port->attr.max_vl_num = RXE_PORT_MAX_VL_NUM;
 port->attr.sm_sl = RXE_PORT_SM_SL;
 port->attr.subnet_timeout = RXE_PORT_SUBNET_TIMEOUT;
 port->attr.init_type_reply = RXE_PORT_INIT_TYPE_REPLY;
 port->attr.active_width = RXE_PORT_ACTIVE_WIDTH;
 port->attr.active_speed = RXE_PORT_ACTIVE_SPEED;
 port->attr.phys_state = RXE_PORT_PHYS_STATE;
 port->mtu_cap = ib_mtu_enum_to_int(IB_MTU_256);
 port->subnet_prefix = cpu_to_be64(RXE_PORT_SUBNET_PREFIX);

 return 0;
}
