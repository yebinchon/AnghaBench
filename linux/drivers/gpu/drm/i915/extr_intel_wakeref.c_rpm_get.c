
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_wakeref {int rpm; int wakeref; } ;


 int intel_runtime_pm_get (int ) ;

__attribute__((used)) static void rpm_get(struct intel_wakeref *wf)
{
 wf->wakeref = intel_runtime_pm_get(wf->rpm);
}
