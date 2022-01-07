
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_svc {TYPE_1__* watchdog; } ;
struct TYPE_2__ {int enabled; } ;



bool gb_svc_watchdog_enabled(struct gb_svc *svc)
{
 if (!svc || !svc->watchdog)
  return 0;
 return svc->watchdog->enabled;
}
