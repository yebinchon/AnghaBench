
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hfi1_pportdata {int part_enforce; struct hfi1_devdata* dd; int port_xmit_constraint_errors; int * pkeys; } ;
struct TYPE_2__ {int status; int pkey; int slid; } ;
struct hfi1_devdata {TYPE_1__ err_info_xmit_constraint; } ;
typedef size_t int8_t ;


 int HFI1_PART_ENFORCE_OUT ;
 int MAX_PKEY_VALUES ;
 int OPA_EI_STATUS_SMASK ;
 int PKEY_LOW_15_MASK ;
 scalar_t__ egress_pkey_matches_entry (int,int ) ;
 int incr_cntr64 (int *) ;

int egress_pkey_check(struct hfi1_pportdata *ppd, u32 slid, u16 pkey,
        u8 sc5, int8_t s_pkey_index)
{
 struct hfi1_devdata *dd;
 int i;
 int is_user_ctxt_mechanism = (s_pkey_index < 0);

 if (!(ppd->part_enforce & HFI1_PART_ENFORCE_OUT))
  return 0;


 if ((sc5 == 0xf) && ((pkey & PKEY_LOW_15_MASK) != PKEY_LOW_15_MASK))
  goto bad;


 if ((pkey & PKEY_LOW_15_MASK) == 0)
  goto bad;





 if (!is_user_ctxt_mechanism &&
     egress_pkey_matches_entry(pkey, ppd->pkeys[s_pkey_index])) {
  return 0;
 }

 for (i = 0; i < MAX_PKEY_VALUES; i++) {
  if (egress_pkey_matches_entry(pkey, ppd->pkeys[i]))
   return 0;
 }
bad:





 if (!is_user_ctxt_mechanism) {
  incr_cntr64(&ppd->port_xmit_constraint_errors);
  dd = ppd->dd;
  if (!(dd->err_info_xmit_constraint.status &
        OPA_EI_STATUS_SMASK)) {
   dd->err_info_xmit_constraint.status |=
    OPA_EI_STATUS_SMASK;
   dd->err_info_xmit_constraint.slid = slid;
   dd->err_info_xmit_constraint.pkey = pkey;
  }
 }
 return 1;
}
