
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfi1_pportdata {int * pkeys; } ;


 int MAX_PKEY_VALUES ;
 scalar_t__ ingress_pkey_matches_entry (int ,int ) ;

__attribute__((used)) static int ingress_pkey_table_search(struct hfi1_pportdata *ppd, u16 pkey)
{
 int i;

 for (i = 0; i < MAX_PKEY_VALUES; i++) {
  if (ingress_pkey_matches_entry(pkey, ppd->pkeys[i]))
   return 0;
 }
 return 1;
}
