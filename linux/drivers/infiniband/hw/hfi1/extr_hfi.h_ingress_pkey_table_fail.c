
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct hfi1_pportdata {int port_rcv_constraint_errors; struct hfi1_devdata* dd; } ;
struct TYPE_2__ {int status; int pkey; int slid; } ;
struct hfi1_devdata {TYPE_1__ err_info_rcv_constraint; } ;


 int OPA_EI_STATUS_SMASK ;
 int incr_cntr64 (int *) ;

__attribute__((used)) static void ingress_pkey_table_fail(struct hfi1_pportdata *ppd, u16 pkey,
        u32 slid)
{
 struct hfi1_devdata *dd = ppd->dd;

 incr_cntr64(&ppd->port_rcv_constraint_errors);
 if (!(dd->err_info_rcv_constraint.status & OPA_EI_STATUS_SMASK)) {
  dd->err_info_rcv_constraint.status |= OPA_EI_STATUS_SMASK;
  dd->err_info_rcv_constraint.slid = slid;
  dd->err_info_rcv_constraint.pkey = pkey;
 }
}
