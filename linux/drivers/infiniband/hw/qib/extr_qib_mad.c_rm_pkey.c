
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qib_pportdata {scalar_t__* pkeys; int * pkeyrefs; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ atomic_dec_and_test (int *) ;

__attribute__((used)) static int rm_pkey(struct qib_pportdata *ppd, u16 key)
{
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(ppd->pkeys); i++) {
  if (ppd->pkeys[i] != key)
   continue;
  if (atomic_dec_and_test(&ppd->pkeyrefs[i])) {
   ppd->pkeys[i] = 0;
   ret = 1;
   goto bail;
  }
  break;
 }

 ret = 0;

bail:
 return ret;
}
