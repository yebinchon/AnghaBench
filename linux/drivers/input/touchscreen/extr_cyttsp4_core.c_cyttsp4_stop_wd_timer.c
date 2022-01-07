
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp4 {int watchdog_timer; int watchdog_work; } ;


 int CY_WATCHDOG_TIMEOUT ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void cyttsp4_stop_wd_timer(struct cyttsp4 *cd)
{
 if (!CY_WATCHDOG_TIMEOUT)
  return;





 del_timer_sync(&cd->watchdog_timer);
 cancel_work_sync(&cd->watchdog_work);
 del_timer_sync(&cd->watchdog_timer);
}
