
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int inrange_state; int pad_input_event_flag; } ;
struct wacom_features {int numbered_buttons; } ;
struct wacom_wac {int is_direct_mode; TYPE_3__ hid_data; TYPE_1__* shared; struct wacom_features features; struct input_dev* pad_input; } ;
struct TYPE_5__ {int count; } ;
struct wacom {TYPE_2__ led; struct wacom_wac wacom_wac; } ;
struct input_dev {int dummy; } ;
struct hid_usage {scalar_t__ hid; int code; int type; } ;
struct hid_field {scalar_t__ physical; int logical_maximum; } ;
struct hid_device {int vendor; int product; } ;
typedef int __s32 ;
struct TYPE_4__ {int is_touch_on; int touch_input; } ;


 unsigned int HID_DG_TABLETFUNCTIONKEY ;
 int SW_MUTE_DEVICE ;






 int WACOM_WORKER_MODE_CHANGE ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 unsigned int wacom_equivalent_usage (scalar_t__) ;
 int wacom_offset_rotation (struct input_dev*,struct hid_usage*,int,int,int) ;
 int wacom_schedule_work (struct wacom_wac*,int ) ;
 int wacom_update_led (struct wacom*,int ,int,int) ;

__attribute__((used)) static void wacom_wac_pad_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct input_dev *input = wacom_wac->pad_input;
 struct wacom_features *features = &wacom_wac->features;
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);
 int i;
 bool do_report = 0;





 if (!usage->type && equivalent_usage != 132)
  return;

 if (wacom_equivalent_usage(field->physical) == HID_DG_TABLETFUNCTIONKEY) {
  if (usage->hid != 129)
   wacom_wac->hid_data.inrange_state |= value;
 }

 switch (equivalent_usage) {
 case 129:







  if (hdev->vendor == 0x56a &&
      (hdev->product == 0x34d || hdev->product == 0x34e ||
       hdev->product == 0x357 || hdev->product == 0x358 ||
       hdev->product == 0x392 ||
       hdev->product == 0x398 || hdev->product == 0x399)) {
   value = (field->logical_maximum - value);

   if (hdev->product == 0x357 || hdev->product == 0x358 ||
       hdev->product == 0x392)
    value = wacom_offset_rotation(input, usage, value, 3, 16);
   else if (hdev->product == 0x34d || hdev->product == 0x34e ||
     hdev->product == 0x398 || hdev->product == 0x399)
    value = wacom_offset_rotation(input, usage, value, 1, 2);
  }
  else {
   value = wacom_offset_rotation(input, usage, value, 1, 4);
  }
  do_report = 1;
  break;
 case 128:
  if (!value)
   input_event(input, usage->type, usage->code, 0);
  break;

 case 131:
 case 130:
  if (wacom_wac->shared->touch_input) {
   bool *is_touch_on = &wacom_wac->shared->is_touch_on;

   if (equivalent_usage == 131 && value)
    *is_touch_on = !(*is_touch_on);
   else if (equivalent_usage == 130)
    *is_touch_on = value;

   input_report_switch(wacom_wac->shared->touch_input,
         SW_MUTE_DEVICE, !(*is_touch_on));
   input_sync(wacom_wac->shared->touch_input);
  }
  break;

 case 132:
  if (wacom_wac->is_direct_mode != value) {
   wacom_wac->is_direct_mode = value;
   wacom_schedule_work(&wacom->wacom_wac, WACOM_WORKER_MODE_CHANGE);
  }
  break;

 case 133:
  for (i = 0; i < wacom->led.count; i++)
   wacom_update_led(wacom, features->numbered_buttons,
      value, i);

 default:
  do_report = 1;
  break;
 }

 if (do_report) {
  input_event(input, usage->type, usage->code, value);
  if (value)
   wacom_wac->hid_data.pad_input_event_flag = 1;
 }
}
