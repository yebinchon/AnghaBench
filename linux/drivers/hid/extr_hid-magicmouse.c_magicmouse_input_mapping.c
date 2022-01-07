
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct magicmouse_sc {TYPE_1__* input; } ;
struct hid_usage {int dummy; } ;
struct hid_input {TYPE_1__* input; } ;
struct hid_field {int flags; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ product; } ;
struct TYPE_3__ {TYPE_2__ id; } ;


 int HID_MAIN_ITEM_RELATIVE ;
 scalar_t__ USB_DEVICE_ID_APPLE_MAGICTRACKPAD ;
 scalar_t__ USB_DEVICE_ID_APPLE_MAGICTRACKPAD2 ;
 struct magicmouse_sc* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int magicmouse_input_mapping(struct hid_device *hdev,
  struct hid_input *hi, struct hid_field *field,
  struct hid_usage *usage, unsigned long **bit, int *max)
{
 struct magicmouse_sc *msc = hid_get_drvdata(hdev);

 if (!msc->input)
  msc->input = hi->input;


 if ((hi->input->id.product == USB_DEVICE_ID_APPLE_MAGICTRACKPAD ||
      hi->input->id.product == USB_DEVICE_ID_APPLE_MAGICTRACKPAD2) &&
     field->flags & HID_MAIN_ITEM_RELATIVE)
  return -1;

 return 0;
}
