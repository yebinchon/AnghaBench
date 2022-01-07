
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {void* aspm_ts_timer_sched; int aspm_enabled; int aspm_lock; int aspm_timer; int dd; void* aspm_ts_last_intr; int aspm_intr_enable; } ;
typedef void* ktime_t ;


 int ASPM_RESCHED_TIMER_MS ;
 int ASPM_TIMER_MS ;
 int ASPM_TRIGGER_NS ;
 int NSEC_PER_MSEC ;
 int aspm_disable_inc (int ) ;
 scalar_t__ jiffies ;
 void* ktime_get () ;
 int ktime_sub (void*,void*) ;
 int ktime_to_ns (int ) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void __aspm_ctx_disable(struct hfi1_ctxtdata *rcd)
{
 bool restart_timer;
 bool close_interrupts;
 unsigned long flags;
 ktime_t now, prev;

 spin_lock_irqsave(&rcd->aspm_lock, flags);

 if (!rcd->aspm_intr_enable)
  goto unlock;

 prev = rcd->aspm_ts_last_intr;
 now = ktime_get();
 rcd->aspm_ts_last_intr = now;


 close_interrupts = ktime_to_ns(ktime_sub(now, prev)) < ASPM_TRIGGER_NS;


 restart_timer = ktime_to_ns(ktime_sub(now, rcd->aspm_ts_timer_sched)) >
        ASPM_RESCHED_TIMER_MS * NSEC_PER_MSEC;
 restart_timer = restart_timer && close_interrupts;


 if (rcd->aspm_enabled && close_interrupts) {
  aspm_disable_inc(rcd->dd);
  rcd->aspm_enabled = 0;
  restart_timer = 1;
 }

 if (restart_timer) {
  mod_timer(&rcd->aspm_timer,
     jiffies + msecs_to_jiffies(ASPM_TIMER_MS));
  rcd->aspm_ts_timer_sched = now;
 }
unlock:
 spin_unlock_irqrestore(&rcd->aspm_lock, flags);
}
