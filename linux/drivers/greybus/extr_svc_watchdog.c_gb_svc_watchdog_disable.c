
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc_watchdog {int enabled; int work; } ;
struct gb_svc {struct gb_svc_watchdog* watchdog; } ;


 int ENODEV ;
 int cancel_delayed_work_sync (int *) ;

int gb_svc_watchdog_disable(struct gb_svc *svc)
{
 struct gb_svc_watchdog *watchdog;

 if (!svc->watchdog)
  return -ENODEV;

 watchdog = svc->watchdog;
 if (!watchdog->enabled)
  return 0;

 watchdog->enabled = 0;
 cancel_delayed_work_sync(&watchdog->work);
 return 0;
}
