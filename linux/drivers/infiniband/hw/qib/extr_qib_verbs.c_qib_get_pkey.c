
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {unsigned int hw_pidx; struct qib_devdata* dd; } ;
struct qib_ibport {int dummy; } ;
struct qib_devdata {TYPE_1__** rcd; } ;
struct TYPE_2__ {unsigned int* pkeys; } ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;

unsigned qib_get_pkey(struct qib_ibport *ibp, unsigned index)
{
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct qib_devdata *dd = ppd->dd;
 unsigned ctxt = ppd->hw_pidx;
 unsigned ret;


 if (!dd->rcd || index >= ARRAY_SIZE(dd->rcd[ctxt]->pkeys))
  ret = 0;
 else
  ret = dd->rcd[ctxt]->pkeys[index];

 return ret;
}
