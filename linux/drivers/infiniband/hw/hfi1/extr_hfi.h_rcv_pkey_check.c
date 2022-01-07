
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hfi1_pportdata {int part_enforce; } ;


 int HFI1_PART_ENFORCE_IN ;
 int PKEY_LOW_15_MASK ;
 int ingress_pkey_table_fail (struct hfi1_pportdata*,int,int) ;

__attribute__((used)) static inline int rcv_pkey_check(struct hfi1_pportdata *ppd, u16 pkey,
     u8 sc5, u16 slid)
{
 if (!(ppd->part_enforce & HFI1_PART_ENFORCE_IN))
  return 0;


 if ((sc5 == 0xf) && ((pkey & PKEY_LOW_15_MASK) != PKEY_LOW_15_MASK))
  goto bad;

 return 0;
bad:
 ingress_pkey_table_fail(ppd, pkey, slid);
 return 1;
}
