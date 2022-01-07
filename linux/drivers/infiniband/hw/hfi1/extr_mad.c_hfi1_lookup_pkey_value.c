
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfi1_pportdata {int * pkeys; } ;
struct hfi1_ibport {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;

__attribute__((used)) static u16 hfi1_lookup_pkey_value(struct hfi1_ibport *ibp, int pkey_idx)
{
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);

 if (pkey_idx < ARRAY_SIZE(ppd->pkeys))
  return ppd->pkeys[pkey_idx];

 return 0;
}
