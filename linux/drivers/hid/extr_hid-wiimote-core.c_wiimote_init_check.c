
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ exttype; scalar_t__ mp; int lock; } ;
struct wiimote_data {int hdev; TYPE_1__ state; } ;
typedef scalar_t__ __u8 ;
typedef int __u32 ;


 scalar_t__ WIIMOTE_EXT_NONE ;
 scalar_t__ WIIMOTE_MP_NONE ;
 scalar_t__ WIIMOTE_MP_SINGLE ;
 scalar_t__ WIIMOTE_MP_UNKNOWN ;
 int WIIPROTO_FLAG_BUILTIN_MP ;
 int WIIPROTO_FLAG_EXT_ACTIVE ;
 int WIIPROTO_FLAG_EXT_PLUGGED ;
 int WIIPROTO_FLAG_MP_ACTIVE ;
 int WIIPROTO_FLAG_MP_PLUGGED ;
 int WIIPROTO_FLAG_MP_USED ;
 int WIIPROTO_FLAG_NO_MP ;
 int hid_dbg (int ,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wiimote_cmd_acquire_noint (struct wiimote_data*) ;
 scalar_t__ wiimote_cmd_read_ext (struct wiimote_data*,scalar_t__*) ;
 scalar_t__ wiimote_cmd_read_mp_mapped (struct wiimote_data*) ;
 int wiimote_cmd_release (struct wiimote_data*) ;
 int wiimote_init_poll_mp (struct wiimote_data*) ;

__attribute__((used)) static bool wiimote_init_check(struct wiimote_data *wdata)
{
 __u32 flags;
 __u8 type, data[6];
 bool ret, poll_mp;

 spin_lock_irq(&wdata->state.lock);
 flags = wdata->state.flags;
 spin_unlock_irq(&wdata->state.lock);

 wiimote_cmd_acquire_noint(wdata);
 if (wdata->state.exttype == WIIMOTE_EXT_NONE &&
     wdata->state.mp > 0 && (flags & WIIPROTO_FLAG_MP_USED)) {
  type = wiimote_cmd_read_mp_mapped(wdata);
  ret = type == WIIMOTE_MP_SINGLE;

  spin_lock_irq(&wdata->state.lock);
  ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
  ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_MP_PLUGGED);
  ret = ret && (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
  spin_unlock_irq(&wdata->state.lock);

  if (!ret)
   hid_dbg(wdata->hdev, "state left: !EXT && MP\n");


  poll_mp = 0;

  goto out_release;
 }






 if (!(flags & WIIPROTO_FLAG_MP_USED) &&
     wdata->state.exttype != WIIMOTE_EXT_NONE) {
  type = wiimote_cmd_read_ext(wdata, data);
  ret = type == wdata->state.exttype;

  spin_lock_irq(&wdata->state.lock);
  ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
  ret = ret && (wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
  spin_unlock_irq(&wdata->state.lock);

  if (!ret)
   hid_dbg(wdata->hdev, "state left: EXT && !MP\n");


  poll_mp = 1;

  goto out_release;
 }
 if (!(flags & WIIPROTO_FLAG_MP_USED) &&
     wdata->state.exttype == WIIMOTE_EXT_NONE) {
  type = wiimote_cmd_read_ext(wdata, data);
  ret = type == wdata->state.exttype;

  spin_lock_irq(&wdata->state.lock);
  ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
  ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
  ret = ret && !(wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED);
  spin_unlock_irq(&wdata->state.lock);

  if (!ret)
   hid_dbg(wdata->hdev, "state left: !EXT && !MP\n");


  poll_mp = 1;

  goto out_release;
 }
 if (wdata->state.exttype != WIIMOTE_EXT_NONE &&
     wdata->state.mp > 0 && (flags & WIIPROTO_FLAG_MP_USED)) {
  type = wiimote_cmd_read_mp_mapped(wdata);
  ret = type != WIIMOTE_MP_NONE;
  ret = ret && type != WIIMOTE_MP_UNKNOWN;
  ret = ret && type != WIIMOTE_MP_SINGLE;

  spin_lock_irq(&wdata->state.lock);
  ret = ret && (wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED);
  ret = ret && (wdata->state.flags & WIIPROTO_FLAG_EXT_ACTIVE);
  ret = ret && (wdata->state.flags & WIIPROTO_FLAG_MP_ACTIVE);
  spin_unlock_irq(&wdata->state.lock);

  if (!ret)
   hid_dbg(wdata->hdev, "state left: EXT && MP\n");


  poll_mp = 0;

  goto out_release;
 }


 ret = 0;

out_release:
 wiimote_cmd_release(wdata);


 if (ret && poll_mp && !(flags & WIIPROTO_FLAG_BUILTIN_MP) &&
     !(flags & WIIPROTO_FLAG_NO_MP))
  wiimote_init_poll_mp(wdata);

 return ret;
}
