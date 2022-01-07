
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int last_slot_field; void* tipswitch; void* id; void* height; void* width; void* y; void* x; } ;
struct wacom_features {void* touch_max; } ;
struct wacom_wac {int is_invalid_bt_frame; int touch_input; TYPE_1__ hid_data; struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_usage {scalar_t__ usage_index; int hid; } ;
struct hid_field {scalar_t__ report_count; } ;
struct hid_device {int dummy; } ;
typedef void* __s32 ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 unsigned int wacom_equivalent_usage (int ) ;
 int wacom_wac_finger_slot (struct wacom_wac*,int ) ;

__attribute__((used)) static void wacom_wac_finger_event(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage, __s32 value)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);
 struct wacom_features *features = &wacom->wacom_wac.features;

 if (wacom_wac->is_invalid_bt_frame)
  return;

 switch (equivalent_usage) {
 case 130:
  wacom_wac->hid_data.x = value;
  break;
 case 129:
  wacom_wac->hid_data.y = value;
  break;
 case 131:
  wacom_wac->hid_data.width = value;
  break;
 case 133:
  wacom_wac->hid_data.height = value;
  break;
 case 135:
  wacom_wac->hid_data.id = value;
  break;
 case 132:
  wacom_wac->hid_data.tipswitch = value;
  break;
 case 128:
  wacom_wac->is_invalid_bt_frame = !value;
  return;
 case 134:
  features->touch_max = value;
  return;
 }

 if (usage->usage_index + 1 == field->report_count) {
  if (equivalent_usage == wacom_wac->hid_data.last_slot_field)
   wacom_wac_finger_slot(wacom_wac, wacom_wac->touch_input);
 }
}
