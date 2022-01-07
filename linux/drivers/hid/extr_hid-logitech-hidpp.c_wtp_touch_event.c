
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtp_data {scalar_t__ y_size; scalar_t__ flip_y; } ;
struct hidpp_touchpad_raw_xy_finger {scalar_t__ area; scalar_t__ y; scalar_t__ x; scalar_t__ contact_status; int finger_id; scalar_t__ contact_type; } ;
struct hidpp_device {int input; struct wtp_data* private_data; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int EV_ABS ;
 int MT_TOOL_FINGER ;
 int input_event (int ,int ,int ,scalar_t__) ;
 int input_mt_get_slot_by_key (int ,int ) ;
 int input_mt_report_slot_state (int ,int ,scalar_t__) ;
 int input_mt_slot (int ,int) ;

__attribute__((used)) static void wtp_touch_event(struct hidpp_device *hidpp,
 struct hidpp_touchpad_raw_xy_finger *touch_report)
{
 struct wtp_data *wd = hidpp->private_data;
 int slot;

 if (!touch_report->finger_id || touch_report->contact_type)

  return;

 slot = input_mt_get_slot_by_key(hidpp->input, touch_report->finger_id);

 input_mt_slot(hidpp->input, slot);
 input_mt_report_slot_state(hidpp->input, MT_TOOL_FINGER,
     touch_report->contact_status);
 if (touch_report->contact_status) {
  input_event(hidpp->input, EV_ABS, ABS_MT_POSITION_X,
    touch_report->x);
  input_event(hidpp->input, EV_ABS, ABS_MT_POSITION_Y,
    wd->flip_y ? wd->y_size - touch_report->y :
          touch_report->y);
  input_event(hidpp->input, EV_ABS, ABS_MT_PRESSURE,
    touch_report->area);
 }
}
