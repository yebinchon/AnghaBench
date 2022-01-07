
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t exttype; size_t devtype; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct wiimod_ops {int (* in_accel ) (struct wiimote_data*,size_t const*) ;} ;
typedef size_t __u8 ;


 size_t const WIIMOD_NULL ;
 int stub1 (struct wiimote_data*,size_t const*) ;
 int stub2 (struct wiimote_data*,size_t const*) ;
 struct wiimod_ops** wiimod_ext_table ;
 struct wiimod_ops** wiimod_table ;
 size_t** wiimote_devtype_mods ;

__attribute__((used)) static void handler_accel(struct wiimote_data *wdata, const __u8 *payload)
{
 const __u8 *iter, *mods;
 const struct wiimod_ops *ops;

 ops = wiimod_ext_table[wdata->state.exttype];
 if (ops->in_accel) {
  ops->in_accel(wdata, payload);
  return;
 }

 mods = wiimote_devtype_mods[wdata->state.devtype];
 for (iter = mods; *iter != WIIMOD_NULL; ++iter) {
  ops = wiimod_table[*iter];
  if (ops->in_accel) {
   ops->in_accel(wdata, payload);
   break;
  }
 }
}
