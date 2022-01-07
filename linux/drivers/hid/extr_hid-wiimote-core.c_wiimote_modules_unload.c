
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t devtype; int lock; } ;
struct wiimote_data {int * input; TYPE_1__ state; } ;
struct wiimod_ops {int (* remove ) (struct wiimod_ops const*,struct wiimote_data*) ;} ;
typedef size_t __u8 ;


 size_t const WIIMOD_NULL ;
 size_t WIIMOTE_DEV_UNKNOWN ;
 int input_get_device (int *) ;
 int input_put_device (int *) ;
 int input_unregister_device (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct wiimod_ops const*,struct wiimote_data*) ;
 struct wiimod_ops** wiimod_table ;
 size_t** wiimote_devtype_mods ;

__attribute__((used)) static void wiimote_modules_unload(struct wiimote_data *wdata)
{
 const __u8 *mods, *iter;
 const struct wiimod_ops *ops;
 unsigned long flags;

 mods = wiimote_devtype_mods[wdata->state.devtype];

 spin_lock_irqsave(&wdata->state.lock, flags);
 wdata->state.devtype = WIIMOTE_DEV_UNKNOWN;
 spin_unlock_irqrestore(&wdata->state.lock, flags);


 for (iter = mods; *iter != WIIMOD_NULL; ++iter)
              ;

 if (wdata->input) {
  input_get_device(wdata->input);
  input_unregister_device(wdata->input);
 }

 for ( ; iter-- != mods; ) {
  ops = wiimod_table[*iter];
  if (ops->remove)
   ops->remove(ops, wdata);
 }

 if (wdata->input) {
  input_put_device(wdata->input);
  wdata->input = ((void*)0);
 }
}
