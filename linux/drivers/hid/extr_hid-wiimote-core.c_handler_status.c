
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int cmd_battery; } ;
struct wiimote_data {TYPE_1__ state; int hdev; } ;
typedef int __u8 ;


 int WIIPROTO_FLAG_EXT_ACTIVE ;
 int WIIPROTO_FLAG_EXT_PLUGGED ;
 int WIIPROTO_FLAG_MP_ACTIVE ;
 int WIIPROTO_FLAG_MP_PLUGGED ;
 int WIIPROTO_REQ_SREQ ;
 int __wiimote_schedule (struct wiimote_data*) ;
 int handler_status_K (struct wiimote_data*,int const*) ;
 int hid_dbg (int ,char*) ;
 int wiimote_cmd_complete (struct wiimote_data*) ;
 scalar_t__ wiimote_cmd_pending (struct wiimote_data*,int ,int ) ;

__attribute__((used)) static void handler_status(struct wiimote_data *wdata, const __u8 *payload)
{
 handler_status_K(wdata, payload);


 if (payload[2] & 0x02) {
  if (!(wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED)) {
   hid_dbg(wdata->hdev, "EXT hotplug: 1\n");
   wdata->state.flags |= WIIPROTO_FLAG_EXT_PLUGGED;
   __wiimote_schedule(wdata);
  }
 } else {
  if (wdata->state.flags & WIIPROTO_FLAG_EXT_PLUGGED) {
   hid_dbg(wdata->hdev, "EXT hotplug: 0\n");
   wdata->state.flags &= ~WIIPROTO_FLAG_EXT_PLUGGED;
   wdata->state.flags &= ~WIIPROTO_FLAG_MP_PLUGGED;
   wdata->state.flags &= ~WIIPROTO_FLAG_EXT_ACTIVE;
   wdata->state.flags &= ~WIIPROTO_FLAG_MP_ACTIVE;
   __wiimote_schedule(wdata);
  }
 }

 wdata->state.cmd_battery = payload[5];
 if (wiimote_cmd_pending(wdata, WIIPROTO_REQ_SREQ, 0))
  wiimote_cmd_complete(wdata);
}
