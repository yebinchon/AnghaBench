
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t exttype; int lock; int flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct wiimod_ops {int (* remove ) (struct wiimod_ops const*,struct wiimote_data*) ;} ;


 size_t WIIMOTE_EXT_UNKNOWN ;
 int WIIPROTO_FLAG_EXT_USED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct wiimod_ops const*,struct wiimote_data*) ;
 struct wiimod_ops** wiimod_ext_table ;

__attribute__((used)) static void wiimote_ext_unload(struct wiimote_data *wdata)
{
 unsigned long flags;
 const struct wiimod_ops *ops;

 ops = wiimod_ext_table[wdata->state.exttype];

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.exttype = WIIMOTE_EXT_UNKNOWN;
 wdata->state.flags &= ~WIIPROTO_FLAG_EXT_USED;
 spin_unlock_irqrestore(&wdata->state.lock, flags);

 if (ops->remove)
  ops->remove(ops, wdata);
}
