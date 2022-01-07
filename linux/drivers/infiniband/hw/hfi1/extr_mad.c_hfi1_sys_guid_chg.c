
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int lid; int new_sys_guid; } ;
struct TYPE_5__ {int issuer_lid; TYPE_1__ ntc_145; } ;
struct trap_node {int len; TYPE_2__ data; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_6__ {int lid; } ;


 int IB_NOTICE_TYPE_INFO ;
 int OPA_TRAP_CHANGE_SYSGUID ;
 struct trap_node* create_trap_node (int ,int ,int ) ;
 int ib_hfi1_sys_image_guid ;
 TYPE_3__* ppd_from_ibp (struct hfi1_ibport*) ;
 int send_trap (struct hfi1_ibport*,struct trap_node*) ;

void hfi1_sys_guid_chg(struct hfi1_ibport *ibp)
{
 struct trap_node *trap;
 u32 lid = ppd_from_ibp(ibp)->lid;

 trap = create_trap_node(IB_NOTICE_TYPE_INFO, OPA_TRAP_CHANGE_SYSGUID,
    lid);
 if (!trap)
  return;

 trap->data.ntc_145.new_sys_guid = ib_hfi1_sys_image_guid;
 trap->data.ntc_145.lid = trap->data.issuer_lid;

 trap->len = sizeof(trap->data);
 send_trap(ibp, trap);
}
