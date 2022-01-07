
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfi1_pportdata {int* pkeys; } ;
struct hfi1_ibport {int dummy; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int FULL_MGMT_P_KEY ;
 int LIM_MGMT_P_KEY ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;

int hfi1_lookup_pkey_idx(struct hfi1_ibport *ibp, u16 pkey)
{
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 unsigned i;

 if (pkey == FULL_MGMT_P_KEY || pkey == LIM_MGMT_P_KEY) {
  unsigned lim_idx = -1;

  for (i = 0; i < ARRAY_SIZE(ppd->pkeys); ++i) {

   if (ppd->pkeys[i] == pkey)
    return i;
   if (ppd->pkeys[i] == LIM_MGMT_P_KEY)
    lim_idx = i;
  }


  if (pkey == FULL_MGMT_P_KEY)
   return lim_idx;


  return -1;
 }

 pkey &= 0x7fff;

 for (i = 0; i < ARRAY_SIZE(ppd->pkeys); ++i)
  if ((ppd->pkeys[i] & 0x7fff) == pkey)
   return i;




 return -1;
}
