
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd_err; } ;
struct wiimote_data {int hdev; TYPE_1__ state; } ;
typedef scalar_t__ __u8 ;


 int handler_keys (struct wiimote_data*,scalar_t__ const*) ;
 int hid_warn (int ,char*,scalar_t__,scalar_t__) ;
 int wiimote_cmd_complete (struct wiimote_data*) ;
 scalar_t__ wiimote_cmd_pending (struct wiimote_data*,scalar_t__,int ) ;

__attribute__((used)) static void handler_return(struct wiimote_data *wdata, const __u8 *payload)
{
 __u8 err = payload[3];
 __u8 cmd = payload[2];

 handler_keys(wdata, payload);

 if (wiimote_cmd_pending(wdata, cmd, 0)) {
  wdata->state.cmd_err = err;
  wiimote_cmd_complete(wdata);
 } else if (err) {
  hid_warn(wdata->hdev, "Remote error %hhu on req %hhu\n", err,
         cmd);
 }
}
