
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int dr_rtn_path; int dr_trunc_hop; int dr_slid; int mkey; int attr_mod; int attr_id; int method; int lid; } ;
struct TYPE_5__ {TYPE_1__ ntc_256; int issuer_lid; } ;
struct trap_node {int len; TYPE_2__ data; } ;
struct ib_mad_hdr {scalar_t__ mgmt_class; int attr_mod; int attr_id; int method; } ;
struct hfi1_ibport {int dummy; } ;
typedef int __be64 ;
typedef int __be32 ;
struct TYPE_6__ {int lid; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 int IB_NOTICE_TRAP_DR_NOTICE ;
 int IB_NOTICE_TRAP_DR_TRUNC ;
 int IB_NOTICE_TYPE_SECURITY ;
 int OPA_TRAP_BAD_M_KEY ;
 struct trap_node* create_trap_node (int ,int ,int ) ;
 int memcpy (int ,int *,int ) ;
 TYPE_3__* ppd_from_ibp (struct hfi1_ibport*) ;
 int send_trap (struct hfi1_ibport*,struct trap_node*) ;

__attribute__((used)) static void bad_mkey(struct hfi1_ibport *ibp, struct ib_mad_hdr *mad,
       __be64 mkey, __be32 dr_slid, u8 return_path[], u8 hop_cnt)
{
 struct trap_node *trap;
 u32 lid = ppd_from_ibp(ibp)->lid;

 trap = create_trap_node(IB_NOTICE_TYPE_SECURITY, OPA_TRAP_BAD_M_KEY,
    lid);
 if (!trap)
  return;


 trap->data.ntc_256.lid = trap->data.issuer_lid;
 trap->data.ntc_256.method = mad->method;
 trap->data.ntc_256.attr_id = mad->attr_id;
 trap->data.ntc_256.attr_mod = mad->attr_mod;
 trap->data.ntc_256.mkey = mkey;
 if (mad->mgmt_class == IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE) {
  trap->data.ntc_256.dr_slid = dr_slid;
  trap->data.ntc_256.dr_trunc_hop = IB_NOTICE_TRAP_DR_NOTICE;
  if (hop_cnt > ARRAY_SIZE(trap->data.ntc_256.dr_rtn_path)) {
   trap->data.ntc_256.dr_trunc_hop |=
    IB_NOTICE_TRAP_DR_TRUNC;
   hop_cnt = ARRAY_SIZE(trap->data.ntc_256.dr_rtn_path);
  }
  trap->data.ntc_256.dr_trunc_hop |= hop_cnt;
  memcpy(trap->data.ntc_256.dr_rtn_path, return_path,
         hop_cnt);
 }

 trap->len = sizeof(trap->data);

 send_trap(ibp, trap);
}
