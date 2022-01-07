
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; int num_contacts_left; TYPE_1__* shared; struct input_dev* touch_input; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int touch_down; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int MT_TOOL_FINGER ;
 int SW_MUTE_DEVICE ;
 int get_unaligned_le16 (unsigned char*) ;
 unsigned char input_abs_get_res (struct input_dev*,int ) ;
 int input_mt_get_slot_by_key (struct input_dev*,unsigned char) ;
 int input_mt_report_slot_state (struct input_dev*,int ,unsigned char) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_switch (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int max (int,int) ;
 int min (int,int) ;
 int wacom_wac_finger_count_touches (struct wacom_wac*) ;

__attribute__((used)) static void wacom_intuos_pro2_bt_touch(struct wacom_wac *wacom)
{
 const int finger_touch_len = 8;
 const int finger_frames = 4;
 const int finger_frame_len = 43;

 struct input_dev *touch_input = wacom->touch_input;
 unsigned char *data = wacom->data;
 int num_contacts_left = 5;
 int i, j;

 for (i = 0; i < finger_frames; i++) {
  unsigned char *frame = &data[i*finger_frame_len + 109];
  int current_num_contacts = frame[0] & 0x7F;
  int contacts_to_send;

  if (!(frame[0] & 0x80))
   continue;





  if (current_num_contacts)
   wacom->num_contacts_left = current_num_contacts;

  contacts_to_send = min(num_contacts_left, wacom->num_contacts_left);

  for (j = 0; j < contacts_to_send; j++) {
   unsigned char *touch = &frame[j*finger_touch_len + 1];
   int slot = input_mt_get_slot_by_key(touch_input, touch[0]);
   int x = get_unaligned_le16(&touch[2]);
   int y = get_unaligned_le16(&touch[4]);
   int w = touch[6] * input_abs_get_res(touch_input, ABS_MT_POSITION_X);
   int h = touch[7] * input_abs_get_res(touch_input, ABS_MT_POSITION_Y);

   if (slot < 0)
    continue;

   input_mt_slot(touch_input, slot);
   input_mt_report_slot_state(touch_input, MT_TOOL_FINGER, touch[1] & 0x01);
   input_report_abs(touch_input, ABS_MT_POSITION_X, x);
   input_report_abs(touch_input, ABS_MT_POSITION_Y, y);
   input_report_abs(touch_input, ABS_MT_TOUCH_MAJOR, max(w, h));
   input_report_abs(touch_input, ABS_MT_TOUCH_MINOR, min(w, h));
   input_report_abs(touch_input, ABS_MT_ORIENTATION, w > h);
  }

  input_mt_sync_frame(touch_input);

  wacom->num_contacts_left -= contacts_to_send;
  if (wacom->num_contacts_left <= 0) {
   wacom->num_contacts_left = 0;
   wacom->shared->touch_down = wacom_wac_finger_count_touches(wacom);
   input_sync(touch_input);
  }
 }

 if (wacom->num_contacts_left == 0) {


  input_report_switch(touch_input, SW_MUTE_DEVICE, !(data[281] >> 7));
  input_sync(touch_input);
 }

}
