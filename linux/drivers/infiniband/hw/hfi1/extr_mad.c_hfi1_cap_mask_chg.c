
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {int cap_mask3; int new_cap_mask; int lid; } ;
struct TYPE_8__ {TYPE_2__ ntc_144; int issuer_lid; } ;
struct trap_node {int len; TYPE_3__ data; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_9__ {int port_cap3_flags; int port_cap_flags; } ;
struct hfi1_ibport {TYPE_4__ rvp; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {TYPE_1__* pport; } ;
struct TYPE_10__ {int lid; } ;
struct TYPE_6__ {struct hfi1_ibport ibport_data; } ;


 int IB_NOTICE_TYPE_INFO ;
 int OPA_TRAP_CHANGE_CAPABILITY ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 struct trap_node* create_trap_node (int ,int ,int ) ;
 struct hfi1_devdata* dd_from_dev (struct hfi1_ibdev*) ;
 struct hfi1_ibdev* dev_from_rdi (struct rvt_dev_info*) ;
 TYPE_5__* ppd_from_ibp (struct hfi1_ibport*) ;
 int send_trap (struct hfi1_ibport*,struct trap_node*) ;

void hfi1_cap_mask_chg(struct rvt_dev_info *rdi, u8 port_num)
{
 struct trap_node *trap;
 struct hfi1_ibdev *verbs_dev = dev_from_rdi(rdi);
 struct hfi1_devdata *dd = dd_from_dev(verbs_dev);
 struct hfi1_ibport *ibp = &dd->pport[port_num - 1].ibport_data;
 u32 lid = ppd_from_ibp(ibp)->lid;

 trap = create_trap_node(IB_NOTICE_TYPE_INFO,
    OPA_TRAP_CHANGE_CAPABILITY,
    lid);
 if (!trap)
  return;

 trap->data.ntc_144.lid = trap->data.issuer_lid;
 trap->data.ntc_144.new_cap_mask = cpu_to_be32(ibp->rvp.port_cap_flags);
 trap->data.ntc_144.cap_mask3 = cpu_to_be16(ibp->rvp.port_cap3_flags);

 trap->len = sizeof(trap->data);
 send_trap(ibp, trap);
}
