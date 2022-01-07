
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_ctxtdata {scalar_t__ ctxt; int rcvegrcnt; int rcvegr_tid_base; TYPE_2__* dd; } ;
struct TYPE_4__ {int num_pports; TYPE_1__* cspec; } ;
struct TYPE_3__ {int rcvegrcnt; } ;


 int KCTXT0_EGRCNT ;
 scalar_t__ NUM_IB_PORTS ;

__attribute__((used)) static void qib_7322_init_ctxt(struct qib_ctxtdata *rcd)
{
 if (rcd->ctxt < NUM_IB_PORTS) {
  if (rcd->dd->num_pports > 1) {
   rcd->rcvegrcnt = KCTXT0_EGRCNT / 2;
   rcd->rcvegr_tid_base = rcd->ctxt ? rcd->rcvegrcnt : 0;
  } else {
   rcd->rcvegrcnt = KCTXT0_EGRCNT;
   rcd->rcvegr_tid_base = 0;
  }
 } else {
  rcd->rcvegrcnt = rcd->dd->cspec->rcvegrcnt;
  rcd->rcvegr_tid_base = KCTXT0_EGRCNT +
   (rcd->ctxt - NUM_IB_PORTS) * rcd->rcvegrcnt;
 }
}
