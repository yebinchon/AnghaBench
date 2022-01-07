
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; TYPE_1__* shared; struct input_dev* touch_input; } ;
struct input_dev {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {int touch_down; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int le16_to_cpup (int *) ;
 scalar_t__ report_touch_events (struct wacom_wac*) ;
 int wacom_wac_finger_count_touches (struct wacom_wac*) ;

__attribute__((used)) static int wacom_tpc_mt_touch(struct wacom_wac *wacom)
{
 struct input_dev *input = wacom->touch_input;
 unsigned char *data = wacom->data;
 int i;

 for (i = 0; i < 2; i++) {
  int p = data[1] & (1 << i);
  bool touch = p && report_touch_events(wacom);

  input_mt_slot(input, i);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, touch);
  if (touch) {
   int x = le16_to_cpup((__le16 *)&data[i * 2 + 2]) & 0x7fff;
   int y = le16_to_cpup((__le16 *)&data[i * 2 + 6]) & 0x7fff;

   input_report_abs(input, ABS_MT_POSITION_X, x);
   input_report_abs(input, ABS_MT_POSITION_Y, y);
  }
 }
 input_mt_sync_frame(input);


 wacom->shared->touch_down = wacom_wac_finger_count_touches(wacom);

 return 1;
}
