
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref_auto {struct intel_runtime_pm* rpm; scalar_t__ wakeref; int count; int timer; int lock; } ;
struct intel_runtime_pm {int dummy; } ;


 int refcount_set (int *,int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int wakeref_auto_timeout ;

void intel_wakeref_auto_init(struct intel_wakeref_auto *wf,
        struct intel_runtime_pm *rpm)
{
 spin_lock_init(&wf->lock);
 timer_setup(&wf->timer, wakeref_auto_timeout, 0);
 refcount_set(&wf->count, 0);
 wf->wakeref = 0;
 wf->rpm = rpm;
}
