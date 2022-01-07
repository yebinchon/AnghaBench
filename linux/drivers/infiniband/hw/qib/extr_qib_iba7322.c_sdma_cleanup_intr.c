
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {scalar_t__ hw_pidx; struct qib_devdata* dd; } ;
struct qib_devdata {int flags; int * int_counter; } ;
typedef int irqreturn_t ;


 int INT_MASK_PM (int ,int) ;
 int IRQ_HANDLED ;
 int QIB_BADINTR ;
 int QIB_PRESENT ;
 int SDmaCleanupDone ;
 int kr_intclear ;
 int qib_sdma_event_e20_hw_started ;
 int qib_sdma_process_event (struct qib_pportdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static irqreturn_t sdma_cleanup_intr(int irq, void *data)
{
 struct qib_pportdata *ppd = data;
 struct qib_devdata *dd = ppd->dd;

 if ((dd->flags & (QIB_PRESENT | QIB_BADINTR)) != QIB_PRESENT)






  return IRQ_HANDLED;

 this_cpu_inc(*dd->int_counter);


 qib_write_kreg(dd, kr_intclear, ppd->hw_pidx ?
         INT_MASK_PM(SDmaCleanupDone, 1) :
         INT_MASK_PM(SDmaCleanupDone, 0));
 qib_sdma_process_event(ppd, qib_sdma_event_e20_hw_started);

 return IRQ_HANDLED;
}
