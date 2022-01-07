
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int first_sendbuf; unsigned int last_sendbuf; } ;
struct qib_pportdata {TYPE_1__ sdma_state; } ;
struct qib_devdata {unsigned int num_pports; struct qib_pportdata* pport; } ;



__attribute__((used)) static struct qib_pportdata *is_sdma_buf(struct qib_devdata *dd, unsigned i)
{
 struct qib_pportdata *ppd;
 unsigned pidx;

 for (pidx = 0; pidx < dd->num_pports; pidx++) {
  ppd = dd->pport + pidx;
  if (i >= ppd->sdma_state.first_sendbuf &&
      i < ppd->sdma_state.last_sendbuf)
   return ppd;
 }
 return ((void*)0);
}
