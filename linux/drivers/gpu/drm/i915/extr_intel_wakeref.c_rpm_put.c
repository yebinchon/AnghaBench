
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref {int rpm; int wakeref; } ;
typedef int intel_wakeref_t ;


 int INTEL_WAKEREF_BUG_ON (int) ;
 int fetch_and_zero (int *) ;
 int intel_runtime_pm_put (int ,int ) ;

__attribute__((used)) static void rpm_put(struct intel_wakeref *wf)
{
 intel_wakeref_t wakeref = fetch_and_zero(&wf->wakeref);

 intel_runtime_pm_put(wf->rpm, wakeref);
 INTEL_WAKEREF_BUG_ON(!wakeref);
}
