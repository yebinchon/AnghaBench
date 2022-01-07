
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rvt_ibport {int subnet_timeout; int qkey_violations; int pkey_violations; int port_cap_flags; int sm_sl; int sm_lid; } ;
struct TYPE_2__ {int (* query_port_state ) (struct rvt_dev_info*,int ,struct ib_port_attr*) ;} ;
struct rvt_dev_info {TYPE_1__ driver_f; struct rvt_ibport** ports; } ;
struct ib_port_attr {int max_msg_sz; scalar_t__ init_type_reply; int subnet_timeout; int qkey_viol_cntr; int bad_pkey_cntr; int pkey_tbl_len; int port_cap_flags; int sm_sl; int sm_lid; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;
 int ibport_num_to_idx (struct ib_device*,int ) ;
 int rvt_get_npkeys (struct rvt_dev_info*) ;
 int stub1 (struct rvt_dev_info*,int ,struct ib_port_attr*) ;

__attribute__((used)) static int rvt_query_port(struct ib_device *ibdev, u8 port_num,
     struct ib_port_attr *props)
{
 struct rvt_dev_info *rdi = ib_to_rvt(ibdev);
 struct rvt_ibport *rvp;
 int port_index = ibport_num_to_idx(ibdev, port_num);

 if (port_index < 0)
  return -EINVAL;

 rvp = rdi->ports[port_index];

 props->sm_lid = rvp->sm_lid;
 props->sm_sl = rvp->sm_sl;
 props->port_cap_flags = rvp->port_cap_flags;
 props->max_msg_sz = 0x80000000;
 props->pkey_tbl_len = rvt_get_npkeys(rdi);
 props->bad_pkey_cntr = rvp->pkey_violations;
 props->qkey_viol_cntr = rvp->qkey_violations;
 props->subnet_timeout = rvp->subnet_timeout;
 props->init_type_reply = 0;


 return rdi->driver_f.query_port_state(rdi, port_num, props);
}
