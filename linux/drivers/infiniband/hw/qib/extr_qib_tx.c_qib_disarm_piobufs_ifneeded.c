
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pioavail_lock; int (* f_sendctrl ) (int ,int ) ;int pio_need_disarm; } ;
struct qib_ctxtdata {unsigned int pio_base; unsigned int piocnt; unsigned int subctxt_cnt; int ppd; int * user_event_mask; struct qib_devdata* dd; } ;


 int QIB_SENDCTRL_DISARM_BUF (unsigned int) ;
 int _QIB_EVENT_DISARM_BUFS_BIT ;
 scalar_t__ __test_and_clear_bit (unsigned int,int ) ;
 int clear_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (int ,int ) ;

int qib_disarm_piobufs_ifneeded(struct qib_ctxtdata *rcd)
{
 struct qib_devdata *dd = rcd->dd;
 unsigned i;
 unsigned last;
 unsigned n = 0;

 last = rcd->pio_base + rcd->piocnt;





 if (rcd->user_event_mask) {




  clear_bit(_QIB_EVENT_DISARM_BUFS_BIT, &rcd->user_event_mask[0]);
  for (i = 1; i < rcd->subctxt_cnt; i++)
   clear_bit(_QIB_EVENT_DISARM_BUFS_BIT,
      &rcd->user_event_mask[i]);
 }
 spin_lock_irq(&dd->pioavail_lock);
 for (i = rcd->pio_base; i < last; i++) {
  if (__test_and_clear_bit(i, dd->pio_need_disarm)) {
   n++;
   dd->f_sendctrl(rcd->ppd, QIB_SENDCTRL_DISARM_BUF(i));
  }
 }
 spin_unlock_irq(&dd->pioavail_lock);
 return 0;
}
