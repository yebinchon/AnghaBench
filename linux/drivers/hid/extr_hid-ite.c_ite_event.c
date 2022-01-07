
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct hid_usage {scalar_t__ hid; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
typedef int __s32 ;
struct TYPE_2__ {struct input_dev* input; } ;


 int EV_KEY ;
 int HID_CLAIMED_INPUT ;
 scalar_t__ HID_GD_RFKILL_BTN ;
 int KEY_RFKILL ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static int ite_event(struct hid_device *hdev, struct hid_field *field,
       struct hid_usage *usage, __s32 value)
{
 struct input_dev *input;

 if (!(hdev->claimed & HID_CLAIMED_INPUT) || !field->hidinput)
  return 0;

 input = field->hidinput->input;






 if (usage->hid == HID_GD_RFKILL_BTN) {
  input_event(input, EV_KEY, KEY_RFKILL, 1);
  input_sync(input);
  input_event(input, EV_KEY, KEY_RFKILL, 0);
  input_sync(input);
  return 1;
 }

 return 0;
}
