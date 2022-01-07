
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt_report_data {scalar_t__ is_mt_collection; struct mt_application* application; } ;
struct TYPE_3__ {int export_all_inputs; } ;
struct mt_device {TYPE_1__ mtclass; } ;
struct mt_application {int quirks; } ;
struct hid_usage {int hid; } ;
struct hid_input {scalar_t__ application; TYPE_2__* input; } ;
struct hid_field {scalar_t__ application; int flags; scalar_t__ physical; int report; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int evbit; } ;


 int EV_REP ;
 scalar_t__ HID_CP_CONSUMER_CONTROL ;
 scalar_t__ HID_DG_PEN ;
 scalar_t__ HID_DG_STYLUS ;
 scalar_t__ HID_DG_TOUCHPAD ;
 scalar_t__ HID_DG_TOUCHSCREEN ;
 scalar_t__ HID_GD_KEYBOARD ;
 scalar_t__ HID_GD_SYSTEM_CONTROL ;
 scalar_t__ HID_GD_SYSTEM_MULTIAXIS ;
 scalar_t__ HID_GD_WIRELESS_RADIO_CTLS ;
 int HID_MAIN_ITEM_VARIABLE ;
 int HID_UP_CUSTOM ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 scalar_t__ HID_VD_ASUS_CUSTOM_MEDIA_KEYS ;
 int KEY_BRIGHTNESSDOWN ;
 int KEY_BRIGHTNESSUP ;
 int KEY_DISPLAY_OFF ;
 int KEY_F21 ;
 int KEY_SLEEP ;
 int MT_QUIRK_ASUS_CUSTOM_UP ;
 int hid_err (struct hid_device*,char*) ;
 struct mt_device* hid_get_drvdata (struct hid_device*) ;
 struct mt_report_data* mt_find_report_data (struct mt_device*,int ) ;
 int mt_map_key_clear (int ) ;
 int mt_touch_input_mapping (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*,struct mt_application*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int mt_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct mt_device *td = hid_get_drvdata(hdev);
 struct mt_application *application;
 struct mt_report_data *rdata;

 rdata = mt_find_report_data(td, field->report);
 if (!rdata) {
  hid_err(hdev, "failed to allocate data for report\n");
  return 0;
 }

 application = rdata->application;







 if (!td->mtclass.export_all_inputs &&
     field->application != HID_DG_TOUCHSCREEN &&
     field->application != HID_DG_PEN &&
     field->application != HID_DG_TOUCHPAD &&
     field->application != HID_GD_KEYBOARD &&
     field->application != HID_GD_SYSTEM_CONTROL &&
     field->application != HID_CP_CONSUMER_CONTROL &&
     field->application != HID_GD_WIRELESS_RADIO_CTLS &&
     field->application != HID_GD_SYSTEM_MULTIAXIS &&
     !(field->application == HID_VD_ASUS_CUSTOM_MEDIA_KEYS &&
       application->quirks & MT_QUIRK_ASUS_CUSTOM_UP))
  return -1;






 if (field->application == HID_VD_ASUS_CUSTOM_MEDIA_KEYS &&
     application->quirks & MT_QUIRK_ASUS_CUSTOM_UP &&
     (usage->hid & HID_USAGE_PAGE) == HID_UP_CUSTOM) {
  set_bit(EV_REP, hi->input->evbit);
  if (field->flags & HID_MAIN_ITEM_VARIABLE)
   field->flags &= ~HID_MAIN_ITEM_VARIABLE;
  switch (usage->hid & HID_USAGE) {
  case 0x10: mt_map_key_clear(KEY_BRIGHTNESSDOWN); break;
  case 0x20: mt_map_key_clear(KEY_BRIGHTNESSUP); break;
  case 0x35: mt_map_key_clear(KEY_DISPLAY_OFF); break;
  case 0x6b: mt_map_key_clear(KEY_F21); break;
  case 0x6c: mt_map_key_clear(KEY_SLEEP); break;
  default:
   return -1;
  }
  return 1;
 }

 if (rdata->is_mt_collection)
  return mt_touch_input_mapping(hdev, hi, field, usage, bit, max,
           application);





 if (field->physical == HID_DG_STYLUS)
  hi->application = HID_DG_STYLUS;


 return 0;
}
