
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct hid_usage {int hid; scalar_t__ code; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
typedef scalar_t__ __s32 ;
struct TYPE_2__ {struct input_dev* input; } ;


 unsigned long CP_2WHEEL_MOUSE_HACK ;
 unsigned long CP_2WHEEL_MOUSE_HACK_ON ;
 int HID_CLAIMED_INPUT ;
 int REL_HWHEEL ;
 scalar_t__ REL_WHEEL ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,void*) ;
 int input_event (struct input_dev*,int ,int ,scalar_t__) ;

__attribute__((used)) static int cp_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 unsigned long quirks = (unsigned long)hid_get_drvdata(hdev);

 if (!(hdev->claimed & HID_CLAIMED_INPUT) || !field->hidinput ||
   !usage->type || !(quirks & CP_2WHEEL_MOUSE_HACK))
  return 0;

 if (usage->hid == 0x00090005) {
  if (value)
   quirks |= CP_2WHEEL_MOUSE_HACK_ON;
  else
   quirks &= ~CP_2WHEEL_MOUSE_HACK_ON;
  hid_set_drvdata(hdev, (void *)quirks);
  return 1;
 }

 if (usage->code == REL_WHEEL && (quirks & CP_2WHEEL_MOUSE_HACK_ON)) {
  struct input_dev *input = field->hidinput->input;

  input_event(input, usage->type, REL_HWHEEL, value);
  return 1;
 }

 return 0;
}
