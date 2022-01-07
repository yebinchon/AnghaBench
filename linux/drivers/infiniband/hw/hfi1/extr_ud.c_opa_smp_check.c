
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rvt_qp {int dummy; } ;
struct opa_smp {scalar_t__ mgmt_class; int method; int status; } ;
struct hfi1_pportdata {int dummy; } ;
struct TYPE_2__ {int port_cap_flags; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;


 int FULL_MGMT_P_KEY ;
 scalar_t__ IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE ;
 scalar_t__ IB_MGMT_CLASS_SUBN_LID_ROUTED ;





 int IB_MGMT_METHOD_TRAP ;

 int IB_PORT_SM ;
 int IB_SMP_UNSUP_METHOD ;
 int ingress_pkey_table_fail (struct hfi1_pportdata*,int ,int ) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 scalar_t__ rcv_pkey_check (struct hfi1_pportdata*,int ,int,int ) ;

__attribute__((used)) static int opa_smp_check(struct hfi1_ibport *ibp, u16 pkey, u8 sc5,
    struct rvt_qp *qp, u16 slid, struct opa_smp *smp)
{
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);





 if (sc5 != 0xf)
  return 1;

 if (rcv_pkey_check(ppd, pkey, sc5, slid))
  return 1;






 if (smp->mgmt_class != IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE &&
     smp->mgmt_class != IB_MGMT_CLASS_SUBN_LID_ROUTED) {
  ingress_pkey_table_fail(ppd, pkey, slid);
  return 1;
 }
 switch (smp->method) {
 case 132:
 case 130:
  break;
 case 133:
 case 129:
 case 131:
 case 128:
  if (pkey != FULL_MGMT_P_KEY) {
   ingress_pkey_table_fail(ppd, pkey, slid);
   return 1;
  }
  break;
 default:
  if (ibp->rvp.port_cap_flags & IB_PORT_SM)
   return 0;
  if (smp->method == IB_MGMT_METHOD_TRAP)
   return 1;
  if (pkey == FULL_MGMT_P_KEY) {
   smp->status |= IB_SMP_UNSUP_METHOD;
   return 0;
  }
  ingress_pkey_table_fail(ppd, pkey, slid);
  return 1;
 }
 return 0;
}
