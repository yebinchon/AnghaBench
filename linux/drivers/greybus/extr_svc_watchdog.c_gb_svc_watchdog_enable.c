
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc_watchdog {int enabled; int work; } ;
struct gb_svc {struct gb_svc_watchdog* watchdog; } ;


 int ENODEV ;
 int SVC_WATCHDOG_PERIOD ;
 int schedule_delayed_work (int *,int ) ;

int gb_svc_watchdog_enable(struct gb_svc *svc)
{
 struct gb_svc_watchdog *watchdog;

 if (!svc->watchdog)
  return -ENODEV;

 watchdog = svc->watchdog;
 if (watchdog->enabled)
  return 0;

 watchdog->enabled = 1;
 schedule_delayed_work(&watchdog->work, SVC_WATCHDOG_PERIOD);
 return 0;
}
