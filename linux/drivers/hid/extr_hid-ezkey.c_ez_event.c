
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct hid_usage {scalar_t__ type; scalar_t__ code; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
typedef int __s32 ;
struct TYPE_2__ {struct input_dev* input; } ;


 scalar_t__ EV_REL ;
 int HID_CLAIMED_INPUT ;
 scalar_t__ REL_HWHEEL ;
 int REL_WHEEL ;
 int input_event (struct input_dev*,scalar_t__,int ,int ) ;

__attribute__((used)) static int ez_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 if (!(hdev->claimed & HID_CLAIMED_INPUT) || !field->hidinput ||
   !usage->type)
  return 0;


 if (usage->type == EV_REL && usage->code == REL_HWHEEL) {
  struct input_dev *input = field->hidinput->input;
  input_event(input, usage->type, REL_WHEEL, -value);
  return 1;
 }

 return 0;
}
