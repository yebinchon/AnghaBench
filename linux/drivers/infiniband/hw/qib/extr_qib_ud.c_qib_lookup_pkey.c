
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qib_pportdata {unsigned int hw_pidx; struct qib_devdata* dd; } ;
struct qib_ibport {int dummy; } ;
struct qib_devdata {TYPE_1__** rcd; } ;
struct TYPE_2__ {int* pkeys; } ;


 unsigned int ARRAY_SIZE (int*) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;

__attribute__((used)) static unsigned qib_lookup_pkey(struct qib_ibport *ibp, u16 pkey)
{
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct qib_devdata *dd = ppd->dd;
 unsigned ctxt = ppd->hw_pidx;
 unsigned i;

 pkey &= 0x7fff;

 for (i = 0; i < ARRAY_SIZE(dd->rcd[ctxt]->pkeys); ++i)
  if ((dd->rcd[ctxt]->pkeys[i] & 0x7fff) == pkey)
   return i;





 return 0;
}
