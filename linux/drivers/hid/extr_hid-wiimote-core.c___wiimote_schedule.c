
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct wiimote_data {int init_worker; TYPE_1__ state; } ;


 int WIIPROTO_FLAG_EXITING ;
 int schedule_work (int *) ;

void __wiimote_schedule(struct wiimote_data *wdata)
{
 if (!(wdata->state.flags & WIIPROTO_FLAG_EXITING))
  schedule_work(&wdata->init_worker);
}
