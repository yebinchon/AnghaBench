
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int kdev; } ;
typedef int intel_wakeref_t ;


 int WARN_ONCE (int,char*,int) ;
 int intel_runtime_pm_acquire (struct intel_runtime_pm*,int) ;
 int pm_runtime_get_sync (int ) ;
 int track_intel_runtime_pm_wakeref (struct intel_runtime_pm*) ;

__attribute__((used)) static intel_wakeref_t __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
           bool wakelock)
{
 int ret;

 ret = pm_runtime_get_sync(rpm->kdev);
 WARN_ONCE(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);

 intel_runtime_pm_acquire(rpm, wakelock);

 return track_intel_runtime_pm_wakeref(rpm);
}
