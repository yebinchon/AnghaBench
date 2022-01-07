
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mp; int lock; int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct wiimod_ops {int (* remove ) (struct wiimod_ops const*,struct wiimote_data*) ;} ;


 int WIIPROTO_FLAG_MP_USED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct wiimod_ops const*,struct wiimote_data*) ;
 struct wiimod_ops wiimod_mp ;

__attribute__((used)) static void wiimote_mp_unload(struct wiimote_data *wdata)
{
 unsigned long flags;
 const struct wiimod_ops *ops;

 if (wdata->state.mp < 2)
  return;

 ops = &wiimod_mp;

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.mp = 0;
 wdata->state.flags &= ~WIIPROTO_FLAG_MP_USED;
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 if (ops->remove)
  ops->remove(ops, wdata);
}
