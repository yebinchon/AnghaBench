
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int touch_max; } ;
struct wacom_wac {TYPE_2__* shared; TYPE_1__ features; struct input_dev* touch_input; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int touch_down; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 unsigned char BIT (unsigned int) ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,unsigned int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 scalar_t__ report_touch_events (struct wacom_wac*) ;

__attribute__((used)) static int wacom_bamboo_pad_touch_event(struct wacom_wac *wacom,
  unsigned char *data)
{
 struct input_dev *input = wacom->touch_input;
 unsigned char *finger_data, prefix;
 unsigned id;
 int x, y;
 bool valid;

 prefix = data[0];

 for (id = 0; id < wacom->features.touch_max; id++) {
  valid = !!(prefix & BIT(id)) &&
   report_touch_events(wacom);

  input_mt_slot(input, id);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, valid);

  if (!valid)
   continue;

  finger_data = data + 1 + id * 3;
  x = finger_data[0] | ((finger_data[1] & 0x0f) << 8);
  y = (finger_data[2] << 4) | (finger_data[1] >> 4);

  input_report_abs(input, ABS_MT_POSITION_X, x);
  input_report_abs(input, ABS_MT_POSITION_Y, y);
 }

 input_mt_sync_frame(input);

 input_report_key(input, BTN_LEFT, prefix & 0x40);
 input_report_key(input, BTN_RIGHT, prefix & 0x80);


 wacom->shared->touch_down = !!prefix && report_touch_events(wacom);

 return 1;
}
