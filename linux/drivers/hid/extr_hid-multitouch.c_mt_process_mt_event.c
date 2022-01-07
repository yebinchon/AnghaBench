
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt_application {int quirks; int left_button_state; } ;
struct input_dev {int dummy; } ;
struct hid_usage {int code; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
typedef int __s32 ;
struct TYPE_2__ {struct input_dev* input; } ;


 int BTN_LEFT ;
 int EV_KEY ;
 int HID_CLAIMED_INPUT ;
 int MT_QUIRK_WIN8_PTP_BUTTONS ;
 int input_event (struct input_dev*,int ,int ,int) ;

__attribute__((used)) static void mt_process_mt_event(struct hid_device *hid,
    struct mt_application *app,
    struct hid_field *field,
    struct hid_usage *usage,
    __s32 value,
    bool first_packet)
{
 __s32 quirks = app->quirks;
 struct input_dev *input = field->hidinput->input;

 if (!usage->type || !(hid->claimed & HID_CLAIMED_INPUT))
  return;

 if (quirks & MT_QUIRK_WIN8_PTP_BUTTONS) {






  if (!first_packet)
   return;
  if (usage->type == EV_KEY && usage->code == BTN_LEFT) {
   app->left_button_state |= value;
   return;
  }
 }

 input_event(input, usage->type, usage->code, value);
}
