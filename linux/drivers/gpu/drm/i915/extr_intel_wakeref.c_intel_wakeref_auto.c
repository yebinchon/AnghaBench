
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref_auto {int timer; int lock; int count; int rpm; int wakeref; } ;


 int INTEL_WAKEREF_BUG_ON (int ) ;
 int assert_rpm_wakelock_held (int ) ;
 scalar_t__ del_timer_sync (int *) ;
 int intel_runtime_pm_get_if_in_use (int ) ;
 scalar_t__ jiffies ;
 scalar_t__ mod_timer (int *,scalar_t__) ;
 int refcount_inc_not_zero (int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wakeref_auto_timeout (int *) ;

void intel_wakeref_auto(struct intel_wakeref_auto *wf, unsigned long timeout)
{
 unsigned long flags;

 if (!timeout) {
  if (del_timer_sync(&wf->timer))
   wakeref_auto_timeout(&wf->timer);
  return;
 }


 assert_rpm_wakelock_held(wf->rpm);

 if (!refcount_inc_not_zero(&wf->count)) {
  spin_lock_irqsave(&wf->lock, flags);
  if (!refcount_inc_not_zero(&wf->count)) {
   INTEL_WAKEREF_BUG_ON(wf->wakeref);
   wf->wakeref = intel_runtime_pm_get_if_in_use(wf->rpm);
   refcount_set(&wf->count, 1);
  }
  spin_unlock_irqrestore(&wf->lock, flags);
 }






 if (mod_timer(&wf->timer, jiffies + timeout))
  wakeref_auto_timeout(&wf->timer);
}
