
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mp; } ;
struct wiimote_data {int timer; TYPE_1__ state; int hdev; } ;
typedef int __u8 ;


 int HZ ;
 int hid_info (int ,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int wiimote_cmd_acquire_noint (struct wiimote_data*) ;
 int wiimote_cmd_init_mp (struct wiimote_data*) ;
 int wiimote_cmd_read_mp (struct wiimote_data*,int *) ;
 int wiimote_cmd_release (struct wiimote_data*) ;
 int wiimote_mp_load (struct wiimote_data*) ;
 int wiimote_mp_unload (struct wiimote_data*) ;

__attribute__((used)) static void wiimote_init_poll_mp(struct wiimote_data *wdata)
{
 bool mp;
 __u8 mpdata[6];

 wiimote_cmd_acquire_noint(wdata);
 wiimote_cmd_init_mp(wdata);
 mp = wiimote_cmd_read_mp(wdata, mpdata);
 wiimote_cmd_release(wdata);


 if (mp) {
  if (!wdata->state.mp) {
   hid_info(wdata->hdev, "detected extension: Nintendo Wii Motion Plus\n");
   wiimote_mp_load(wdata);
  }
 } else if (wdata->state.mp) {
  wiimote_mp_unload(wdata);
 }

 mod_timer(&wdata->timer, jiffies + HZ * 4);
}
