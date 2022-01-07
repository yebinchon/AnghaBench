
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct wiimote_data {TYPE_1__ state; int rumble_worker; } ;
struct wiimod_ops {int dummy; } ;


 int cancel_work_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wiiproto_req_rumble (struct wiimote_data*,int ) ;

__attribute__((used)) static void wiimod_rumble_remove(const struct wiimod_ops *ops,
     struct wiimote_data *wdata)
{
 unsigned long flags;

 cancel_work_sync(&wdata->rumble_worker);

 spin_lock_irqsave(&wdata->state.lock, flags);
 wiiproto_req_rumble(wdata, 0);
 spin_unlock_irqrestore(&wdata->state.lock, flags);
}
