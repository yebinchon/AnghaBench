
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int lock; int devtype; } ;
struct wiimote_data {TYPE_1__ state; int timer; } ;
typedef int __u8 ;


 int HZ ;
 int WIIMOTE_DEV_UNKNOWN ;
 int WIIMOTE_EXT_NONE ;
 int WIIPROTO_FLAG_BUILTIN_MP ;
 int WIIPROTO_FLAG_EXT_PLUGGED ;
 int WIIPROTO_FLAG_NO_MP ;
 int WIIPROTO_REQ_SREQ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wiimote_cmd_acquire_noint (struct wiimote_data*) ;
 int wiimote_cmd_init_ext (struct wiimote_data*) ;
 int wiimote_cmd_read_ext (struct wiimote_data*,int *) ;
 int wiimote_cmd_release (struct wiimote_data*) ;
 int wiimote_cmd_set (struct wiimote_data*,int ,int ) ;
 int wiimote_cmd_wait_noint (struct wiimote_data*) ;
 int wiimote_init_set_type (struct wiimote_data*,int ) ;
 int wiiproto_req_status (struct wiimote_data*) ;

__attribute__((used)) static void wiimote_init_detect(struct wiimote_data *wdata)
{
 __u8 exttype = WIIMOTE_EXT_NONE, extdata[6];
 bool ext;
 int ret;

 wiimote_cmd_acquire_noint(wdata);

 spin_lock_irq(&wdata->state.lock);
 wdata->state.devtype = WIIMOTE_DEV_UNKNOWN;
 wiimote_cmd_set(wdata, WIIPROTO_REQ_SREQ, 0);
 wiiproto_req_status(wdata);
 spin_unlock_irq(&wdata->state.lock);

 ret = wiimote_cmd_wait_noint(wdata);
 if (ret)
  goto out_release;

 spin_lock_irq(&wdata->state.lock);
 ext = wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED;
 spin_unlock_irq(&wdata->state.lock);

 if (!ext)
  goto out_release;

 wiimote_cmd_init_ext(wdata);
 exttype = wiimote_cmd_read_ext(wdata, extdata);

out_release:
 wiimote_cmd_release(wdata);
 wiimote_init_set_type(wdata, exttype);


 spin_lock_irq(&wdata->state.lock);
 if (!(wdata->state.flags & WIIPROTO_FLAG_BUILTIN_MP) &&
     !(wdata->state.flags & WIIPROTO_FLAG_NO_MP))
  mod_timer(&wdata->timer, jiffies + HZ * 4);
 spin_unlock_irq(&wdata->state.lock);
}
