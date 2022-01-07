
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_runtime_pm {int available; struct device* kdev; } ;
struct device {int dummy; } ;


 int DPM_FLAG_NEVER_SKIP ;
 int WARN (int,char*,int) ;
 int dev_pm_set_driver_flags (struct device*,int ) ;
 int pm_runtime_dont_use_autosuspend (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;

void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
{
 struct device *kdev = rpm->kdev;
 dev_pm_set_driver_flags(kdev, DPM_FLAG_NEVER_SKIP);

 pm_runtime_set_autosuspend_delay(kdev, 10000);
 pm_runtime_mark_last_busy(kdev);







 if (!rpm->available) {
  int ret;

  pm_runtime_dont_use_autosuspend(kdev);
  ret = pm_runtime_get_sync(kdev);
  WARN(ret < 0, "pm_runtime_get_sync() failed: %d\n", ret);
 } else {
  pm_runtime_use_autosuspend(kdev);
 }






 pm_runtime_put_autosuspend(kdev);
}
