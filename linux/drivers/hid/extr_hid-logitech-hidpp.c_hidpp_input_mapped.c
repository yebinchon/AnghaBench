
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidpp_device {int quirks; } ;
struct hid_usage {scalar_t__ type; scalar_t__ code; } ;
struct hid_input {int dummy; } ;
struct hid_field {int application; } ;
struct hid_device {int dummy; } ;


 scalar_t__ ABS_RZ ;
 scalar_t__ ABS_X ;
 scalar_t__ ABS_Y ;
 scalar_t__ ABS_Z ;
 scalar_t__ EV_ABS ;
 int HIDPP_QUIRK_CLASS_G920 ;
 int HID_GD_MULTIAXIS ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int hidpp_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);

 if (!hidpp)
  return 0;


 if (hidpp->quirks & HIDPP_QUIRK_CLASS_G920) {
  if (usage->type == EV_ABS && (usage->code == ABS_X ||
    usage->code == ABS_Y || usage->code == ABS_Z ||
    usage->code == ABS_RZ)) {
   field->application = HID_GD_MULTIAXIS;
  }
 }

 return 0;
}
