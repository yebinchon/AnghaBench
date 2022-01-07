
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wacom_features {scalar_t__ type; int quirks; } ;
struct TYPE_4__ {int mode_value; int mode_report; struct wacom_features features; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_usage {int hid; int usage_index; } ;
struct hid_field {scalar_t__ application; scalar_t__ physical; int maxusage; int report_size; int index; int logical_maximum; scalar_t__ logical_minimum; TYPE_3__* usage; TYPE_2__* report; } ;
struct hid_device {scalar_t__ vendor; int product; } ;
struct TYPE_6__ {scalar_t__ hid; } ;
struct TYPE_5__ {int maxfield; struct hid_field** field; int id; } ;


 scalar_t__ HID_DG_BARRELSWITCH ;
 int HID_DG_BARRELSWITCH2 ;
 scalar_t__ HID_DG_ERASER ;
 scalar_t__ HID_DG_INRANGE ;
 scalar_t__ HID_DG_INVERT ;
 scalar_t__ HID_DG_PEN ;
 scalar_t__ HID_DG_STYLUS ;
 scalar_t__ HID_DG_TIPSWITCH ;
 scalar_t__ HID_DG_TOOLSERIALNUMBER ;
 unsigned int HID_GD_Y ;
 scalar_t__ HID_GENERIC ;
 scalar_t__ HID_UP_MSVENDOR ;
 int S16_MAX ;
 scalar_t__ S16_MIN ;
 int S32_MAX ;
 scalar_t__ S32_MIN ;
 int U8_MAX ;
 scalar_t__ USB_VENDOR_ID_WACOM ;
 int WACOM_HID_WD_SERIALHI ;
 int WACOM_HID_WD_TOOLTYPE ;
 int WACOM_HID_WT_SERIALNUMBER ;
 scalar_t__ WACOM_PEN_FIELD (struct hid_field*) ;
 int WACOM_QUIRK_AESPEN ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 unsigned int wacom_equivalent_usage (int) ;

__attribute__((used)) static void wacom_hid_usage_quirk(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_features *features = &wacom->wacom_wac.features;
 unsigned int equivalent_usage = wacom_equivalent_usage(usage->hid);





 if (hdev->vendor == USB_VENDOR_ID_WACOM &&
     hdev->product == 0x4200 &&
     field->application == HID_UP_MSVENDOR) {
  wacom->wacom_wac.mode_report = field->report->id;
  wacom->wacom_wac.mode_value = 2;
 }
 if (features->type == HID_GENERIC &&
     usage->hid == 0x000D0000 &&
     field->application == HID_DG_PEN &&
     field->physical == HID_DG_STYLUS) {
  int i = usage->usage_index;

  if (i-4 >= 0 && i+1 < field->maxusage &&
      field->usage[i-4].hid == HID_DG_TIPSWITCH &&
      field->usage[i-3].hid == HID_DG_BARRELSWITCH &&
      field->usage[i-2].hid == HID_DG_ERASER &&
      field->usage[i-1].hid == HID_DG_INVERT &&
      field->usage[i+1].hid == HID_DG_INRANGE) {
   usage->hid = HID_DG_BARRELSWITCH2;
  }
 }
 if (usage->hid == WACOM_HID_WT_SERIALNUMBER &&
     field->report_size == 16 &&
     field->index + 2 < field->report->maxfield) {
  struct hid_field *a = field->report->field[field->index + 1];
  struct hid_field *b = field->report->field[field->index + 2];

  if (a->maxusage > 0 &&
      a->usage[0].hid == HID_DG_TOOLSERIALNUMBER &&
      a->report_size == 32 &&
      b->maxusage > 0 &&
      b->usage[0].hid == 0xFF000000 &&
      b->report_size == 8) {
   features->quirks |= WACOM_QUIRK_AESPEN;
   usage->hid = WACOM_HID_WD_TOOLTYPE;
   field->logical_minimum = S16_MIN;
   field->logical_maximum = S16_MAX;
   a->logical_minimum = S32_MIN;
   a->logical_maximum = S32_MAX;
   b->usage[0].hid = WACOM_HID_WD_SERIALHI;
   b->logical_minimum = 0;
   b->logical_maximum = U8_MAX;
  }
 }


 if (hdev->vendor == USB_VENDOR_ID_WACOM &&
     hdev->product == 0x0358 &&
     WACOM_PEN_FIELD(field) &&
     equivalent_usage == HID_GD_Y) {
  field->logical_maximum = 43200;
 }
}
