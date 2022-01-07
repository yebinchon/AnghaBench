
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ib_wc {size_t pkey_index; int slid; } ;
struct hfi1_pportdata {scalar_t__* pkeys; } ;
struct hfi1_ibport {int dummy; } ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ FULL_MGMT_P_KEY ;
 scalar_t__ LIM_MGMT_P_KEY ;
 int ingress_pkey_table_fail (struct hfi1_pportdata*,scalar_t__,int ) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;

__attribute__((used)) static int opa_local_smp_check(struct hfi1_ibport *ibp,
          const struct ib_wc *in_wc)
{
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 u16 pkey;

 if (in_wc->pkey_index >= ARRAY_SIZE(ppd->pkeys))
  return 1;

 pkey = ppd->pkeys[in_wc->pkey_index];
 if (pkey == LIM_MGMT_P_KEY || pkey == FULL_MGMT_P_KEY)
  return 0;
 ingress_pkey_table_fail(ppd, pkey, in_wc->slid);
 return 1;
}
