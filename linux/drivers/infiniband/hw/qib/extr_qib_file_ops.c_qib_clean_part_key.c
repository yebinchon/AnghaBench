
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {int* pkeys; TYPE_1__* dd; int * pkeyrefs; } ;
struct qib_devdata {int dummy; } ;
struct qib_ctxtdata {int* pkeys; struct qib_pportdata* ppd; } ;
struct TYPE_2__ {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;} ;


 int ARRAY_SIZE (int*) ;
 int QIB_IB_CFG_PKEYS ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int stub1 (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static void qib_clean_part_key(struct qib_ctxtdata *rcd,
          struct qib_devdata *dd)
{
 int i, j, pchanged = 0;
 struct qib_pportdata *ppd = rcd->ppd;

 for (i = 0; i < ARRAY_SIZE(rcd->pkeys); i++) {
  if (!rcd->pkeys[i])
   continue;
  for (j = 0; j < ARRAY_SIZE(ppd->pkeys); j++) {

   if ((ppd->pkeys[j] & 0x7fff) !=
       (rcd->pkeys[i] & 0x7fff))
    continue;
   if (atomic_dec_and_test(&ppd->pkeyrefs[j])) {
    ppd->pkeys[j] = 0;
    pchanged++;
   }
   break;
  }
  rcd->pkeys[i] = 0;
 }
 if (pchanged)
  (void) ppd->dd->f_set_ib_cfg(ppd, QIB_IB_CFG_PKEYS, 0);
}
