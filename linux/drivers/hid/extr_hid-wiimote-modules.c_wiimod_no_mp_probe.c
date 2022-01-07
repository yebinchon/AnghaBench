
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct wiimod_ops {int dummy; } ;


 int WIIPROTO_FLAG_NO_MP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wiimod_no_mp_probe(const struct wiimod_ops *ops,
         struct wiimote_data *wdata)
{
 unsigned long flags;

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.flags |= WIIPROTO_FLAG_NO_MP;
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 return 0;
}
