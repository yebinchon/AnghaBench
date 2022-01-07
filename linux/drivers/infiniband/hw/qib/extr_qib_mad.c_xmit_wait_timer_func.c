
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct timer_list {int dummy; } ;
struct TYPE_7__ {scalar_t__ flags; int timer; int counter; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_6__ {TYPE_1__ rvp; } ;
struct qib_pportdata {TYPE_3__ cong_stats; TYPE_2__ ibport_data; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int ) ;int (* f_set_cntr_sample ) (struct qib_pportdata*,int ,int) ;} ;
struct TYPE_8__ {int timer; } ;


 scalar_t__ HZ ;
 scalar_t__ IB_PMA_CONG_HW_CONTROL_SAMPLE ;
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ;
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ;
 int QIBPORTCNTR_PSSTAT ;
 int QIB_CONG_TIMER_PSINTERVAL ;
 int cache_hw_sample_counters (struct qib_pportdata*) ;
 TYPE_4__ cong_stats ;
 struct qib_devdata* dd_from_ppd (struct qib_pportdata*) ;
 struct qib_pportdata* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct qib_pportdata* ppd ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct qib_pportdata*,int ) ;
 int stub2 (struct qib_pportdata*,int ,int) ;
 int xmit_wait_get_value_delta (struct qib_pportdata*) ;

__attribute__((used)) static void xmit_wait_timer_func(struct timer_list *t)
{
 struct qib_pportdata *ppd = from_timer(ppd, t, cong_stats.timer);
 struct qib_devdata *dd = dd_from_ppd(ppd);
 unsigned long flags;
 u8 status;

 spin_lock_irqsave(&ppd->ibport_data.rvp.lock, flags);
 if (ppd->cong_stats.flags == IB_PMA_CONG_HW_CONTROL_SAMPLE) {
  status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
  if (status == IB_PMA_SAMPLE_STATUS_DONE) {

   cache_hw_sample_counters(ppd);
   ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_TIMER;
  } else
   goto done;
 }
 ppd->cong_stats.counter = xmit_wait_get_value_delta(ppd);
 dd->f_set_cntr_sample(ppd, QIB_CONG_TIMER_PSINTERVAL, 0x0);
done:
 spin_unlock_irqrestore(&ppd->ibport_data.rvp.lock, flags);
 mod_timer(&ppd->cong_stats.timer, jiffies + HZ);
}
