
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qib_pportdata {TYPE_2__* dd; int lflags_lock; int lflags; } ;
struct TYPE_4__ {TYPE_1__* cspec; } ;
struct TYPE_3__ {int ibdeltainprog; void* ibsymsnap; void* iblnkerrsnap; scalar_t__ lli_counter; int iblnkerrdelta; int ibsymdelta; } ;


 int QIBL_IB_FORCE_NOTIFY ;
 int cr_iblinkerrrecov ;
 int cr_ibsymbolerr ;
 int qib_6120_setup_setextled (struct qib_pportdata*,int) ;
 int qib_hol_down (struct qib_pportdata*) ;
 int qib_hol_init (struct qib_pportdata*) ;
 void* read_6120_creg32 (TYPE_2__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qib_6120_ib_updown(struct qib_pportdata *ppd, int ibup, u64 ibcs)
{
 unsigned long flags;

 spin_lock_irqsave(&ppd->lflags_lock, flags);
 ppd->lflags &= ~QIBL_IB_FORCE_NOTIFY;
 spin_unlock_irqrestore(&ppd->lflags_lock, flags);

 if (ibup) {
  if (ppd->dd->cspec->ibdeltainprog) {
   ppd->dd->cspec->ibdeltainprog = 0;
   ppd->dd->cspec->ibsymdelta +=
    read_6120_creg32(ppd->dd, cr_ibsymbolerr) -
     ppd->dd->cspec->ibsymsnap;
   ppd->dd->cspec->iblnkerrdelta +=
    read_6120_creg32(ppd->dd, cr_iblinkerrrecov) -
     ppd->dd->cspec->iblnkerrsnap;
  }
  qib_hol_init(ppd);
 } else {
  ppd->dd->cspec->lli_counter = 0;
  if (!ppd->dd->cspec->ibdeltainprog) {
   ppd->dd->cspec->ibdeltainprog = 1;
   ppd->dd->cspec->ibsymsnap =
    read_6120_creg32(ppd->dd, cr_ibsymbolerr);
   ppd->dd->cspec->iblnkerrsnap =
    read_6120_creg32(ppd->dd, cr_iblinkerrrecov);
  }
  qib_hol_down(ppd);
 }

 qib_6120_setup_setextled(ppd, ibup);

 return 0;
}
