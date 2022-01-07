
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg_drv_data {int quirks; } ;
struct hid_usage {scalar_t__ type; scalar_t__ code; } ;
struct hid_input {int dummy; } ;
struct hid_field {int flags; int application; } ;
struct hid_device {int product; } ;


 scalar_t__ ABS_RZ ;
 scalar_t__ ABS_X ;
 scalar_t__ ABS_Y ;
 scalar_t__ ABS_Z ;
 scalar_t__ EV_ABS ;
 scalar_t__ EV_KEY ;
 scalar_t__ EV_REL ;
 int HID_GD_MULTIAXIS ;
 int HID_MAIN_ITEM_RELATIVE ;
 int LG_BAD_RELATIVE_KEYS ;
 int LG_DUPLICATE_USAGES ;
 int clear_bit (scalar_t__,unsigned long*) ;
 struct lg_drv_data* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int lg_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct lg_drv_data *drv_data = hid_get_drvdata(hdev);

 if ((drv_data->quirks & LG_BAD_RELATIVE_KEYS) && usage->type == EV_KEY &&
   (field->flags & HID_MAIN_ITEM_RELATIVE))
  field->flags &= ~HID_MAIN_ITEM_RELATIVE;

 if ((drv_data->quirks & LG_DUPLICATE_USAGES) && (usage->type == EV_KEY ||
    usage->type == EV_REL || usage->type == EV_ABS))
  clear_bit(usage->code, *bit);


 if (usage->type == EV_ABS && (usage->code == ABS_X ||
   usage->code == ABS_Y || usage->code == ABS_Z ||
   usage->code == ABS_RZ)) {
  switch (hdev->product) {
  case 135:
  case 128:
  case 129:
  case 131:
  case 134:
  case 138:
  case 137:
  case 139:
  case 136:
  case 130:
  case 133:
  case 132:
   field->application = HID_GD_MULTIAXIS;
   break;
  default:
   break;
  }
 }

 return 0;
}
