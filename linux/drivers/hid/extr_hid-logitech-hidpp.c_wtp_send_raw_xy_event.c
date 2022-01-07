
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpp_touchpad_raw_xy {int finger_count; scalar_t__ end_of_frame; int button; int * fingers; } ;
struct hidpp_device {int quirks; int input; } ;


 int BTN_LEFT ;
 int EV_KEY ;
 int HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS ;
 int input_event (int ,int ,int ,int ) ;
 int input_mt_sync_frame (int ) ;
 int input_sync (int ) ;
 int wtp_touch_event (struct hidpp_device*,int *) ;

__attribute__((used)) static void wtp_send_raw_xy_event(struct hidpp_device *hidpp,
  struct hidpp_touchpad_raw_xy *raw)
{
 int i;

 for (i = 0; i < 2; i++)
  wtp_touch_event(hidpp, &(raw->fingers[i]));

 if (raw->end_of_frame &&
     !(hidpp->quirks & HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS))
  input_event(hidpp->input, EV_KEY, BTN_LEFT, raw->button);

 if (raw->end_of_frame || raw->finger_count <= 2) {
  input_mt_sync_frame(hidpp->input);
  input_sync(hidpp->input);
 }
}
