
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc_watchdog {int pm_notifier; } ;
struct gb_svc {struct gb_svc_watchdog* watchdog; } ;


 int gb_svc_watchdog_disable (struct gb_svc*) ;
 int kfree (struct gb_svc_watchdog*) ;
 int unregister_pm_notifier (int *) ;

void gb_svc_watchdog_destroy(struct gb_svc *svc)
{
 struct gb_svc_watchdog *watchdog = svc->watchdog;

 if (!watchdog)
  return;

 unregister_pm_notifier(&watchdog->pm_notifier);
 gb_svc_watchdog_disable(svc);
 svc->watchdog = ((void*)0);
 kfree(watchdog);
}
