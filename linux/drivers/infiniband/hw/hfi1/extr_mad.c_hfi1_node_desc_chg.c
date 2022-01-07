
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int change_flags; int lid; } ;
struct TYPE_5__ {TYPE_1__ ntc_144; int issuer_lid; } ;
struct trap_node {int len; TYPE_2__ data; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_6__ {int lid; } ;


 int IB_NOTICE_TYPE_INFO ;
 int OPA_NOTICE_TRAP_NODE_DESC_CHG ;
 int OPA_TRAP_CHANGE_CAPABILITY ;
 int cpu_to_be16 (int ) ;
 struct trap_node* create_trap_node (int ,int ,int ) ;
 TYPE_3__* ppd_from_ibp (struct hfi1_ibport*) ;
 int send_trap (struct hfi1_ibport*,struct trap_node*) ;

void hfi1_node_desc_chg(struct hfi1_ibport *ibp)
{
 struct trap_node *trap;
 u32 lid = ppd_from_ibp(ibp)->lid;

 trap = create_trap_node(IB_NOTICE_TYPE_INFO,
    OPA_TRAP_CHANGE_CAPABILITY,
    lid);
 if (!trap)
  return;

 trap->data.ntc_144.lid = trap->data.issuer_lid;
 trap->data.ntc_144.change_flags =
  cpu_to_be16(OPA_NOTICE_TRAP_NODE_DESC_CHG);

 trap->len = sizeof(trap->data);
 send_trap(ibp, trap);
}
