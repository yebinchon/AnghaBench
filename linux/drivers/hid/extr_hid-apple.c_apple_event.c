
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {scalar_t__ code; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
struct apple_sc {int quirks; } ;
typedef int __s32 ;
struct TYPE_2__ {int input; } ;


 int APPLE_HAS_FN ;
 int APPLE_INVERT_HWHEEL ;
 int HID_CLAIMED_INPUT ;
 scalar_t__ REL_HWHEEL ;
 struct apple_sc* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ hidinput_apple_event (struct hid_device*,int ,struct hid_usage*,int ) ;
 int input_event (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int apple_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 struct apple_sc *asc = hid_get_drvdata(hdev);

 if (!(hdev->claimed & HID_CLAIMED_INPUT) || !field->hidinput ||
   !usage->type)
  return 0;

 if ((asc->quirks & APPLE_INVERT_HWHEEL) &&
   usage->code == REL_HWHEEL) {
  input_event(field->hidinput->input, usage->type, usage->code,
    -value);
  return 1;
 }

 if ((asc->quirks & APPLE_HAS_FN) &&
   hidinput_apple_event(hdev, field->hidinput->input,
    usage, value))
  return 1;


 return 0;
}
