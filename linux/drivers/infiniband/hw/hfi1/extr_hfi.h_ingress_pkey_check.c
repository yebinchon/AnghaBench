
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hfi1_pportdata {int part_enforce; int * pkeys; } ;


 int HFI1_PART_ENFORCE_IN ;
 int PKEY_LOW_15_MASK ;
 scalar_t__ ingress_pkey_matches_entry (int,int ) ;
 int ingress_pkey_table_fail (struct hfi1_pportdata*,int,int ) ;
 int ingress_pkey_table_search (struct hfi1_pportdata*,int) ;

__attribute__((used)) static inline int ingress_pkey_check(struct hfi1_pportdata *ppd, u16 pkey,
         u8 sc5, u8 idx, u32 slid, bool force)
{
 if (!(force) && !(ppd->part_enforce & HFI1_PART_ENFORCE_IN))
  return 0;


 if ((sc5 == 0xf) && ((pkey & PKEY_LOW_15_MASK) != PKEY_LOW_15_MASK))
  goto bad;


 if ((pkey & PKEY_LOW_15_MASK) == 0)
  goto bad;


 if (ingress_pkey_matches_entry(pkey, ppd->pkeys[idx]))
  return 0;


 if (!ingress_pkey_table_search(ppd, pkey))
  return 0;

bad:
 ingress_pkey_table_fail(ppd, pkey, slid);
 return 1;
}
