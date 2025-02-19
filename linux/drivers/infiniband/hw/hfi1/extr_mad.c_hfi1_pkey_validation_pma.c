
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct opa_mad {int dummy; } ;
struct ib_wc {int pkey_index; } ;
struct hfi1_ibport {int dummy; } ;


 int EINVAL ;
 scalar_t__ FULL_MGMT_P_KEY ;
 scalar_t__ LIM_MGMT_P_KEY ;
 scalar_t__ hfi1_lookup_pkey_value (struct hfi1_ibport*,int ) ;
 scalar_t__ is_full_mgmt_pkey_in_table (struct hfi1_ibport*) ;
 int is_local_mad (struct hfi1_ibport*,struct opa_mad const*,struct ib_wc const*) ;

__attribute__((used)) static int hfi1_pkey_validation_pma(struct hfi1_ibport *ibp,
        const struct opa_mad *in_mad,
        const struct ib_wc *in_wc)
{
 u16 pkey_value = hfi1_lookup_pkey_value(ibp, in_wc->pkey_index);


 if (!is_local_mad(ibp, in_mad, in_wc) &&
     pkey_value != LIM_MGMT_P_KEY &&
     pkey_value != FULL_MGMT_P_KEY)
  return -EINVAL;


 if (pkey_value == LIM_MGMT_P_KEY &&
     is_full_mgmt_pkey_in_table(ibp))
  return -EINVAL;

 return 0;
}
