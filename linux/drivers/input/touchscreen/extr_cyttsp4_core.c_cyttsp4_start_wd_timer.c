
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp4 {int watchdog_timer; } ;


 int CY_WATCHDOG_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void cyttsp4_start_wd_timer(struct cyttsp4 *cd)
{
 if (!CY_WATCHDOG_TIMEOUT)
  return;

 mod_timer(&cd->watchdog_timer, jiffies +
   msecs_to_jiffies(CY_WATCHDOG_TIMEOUT));
}
