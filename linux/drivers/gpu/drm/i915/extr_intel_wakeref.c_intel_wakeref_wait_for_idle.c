
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref {int wakeref; } ;


 int intel_wakeref_is_active (struct intel_wakeref*) ;
 int wait_var_event_killable (int *,int) ;

int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
{
 return wait_var_event_killable(&wf->wakeref,
           !intel_wakeref_is_active(wf));
}
