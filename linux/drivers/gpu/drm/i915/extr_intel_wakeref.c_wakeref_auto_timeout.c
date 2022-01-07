
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct intel_wakeref_auto {int rpm; int lock; int wakeref; int count; } ;
typedef int intel_wakeref_t ;


 int fetch_and_zero (int *) ;
 struct intel_wakeref_auto* from_timer (int ,struct timer_list*,int ) ;
 int intel_runtime_pm_put (int ,int ) ;
 int refcount_dec_and_lock_irqsave (int *,int *,unsigned long*) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 struct intel_wakeref_auto* wf ;

__attribute__((used)) static void wakeref_auto_timeout(struct timer_list *t)
{
 struct intel_wakeref_auto *wf = from_timer(wf, t, timer);
 intel_wakeref_t wakeref;
 unsigned long flags;

 if (!refcount_dec_and_lock_irqsave(&wf->count, &wf->lock, &flags))
  return;

 wakeref = fetch_and_zero(&wf->wakeref);
 spin_unlock_irqrestore(&wf->lock, flags);

 intel_runtime_pm_put(wf->rpm, wakeref);
}
