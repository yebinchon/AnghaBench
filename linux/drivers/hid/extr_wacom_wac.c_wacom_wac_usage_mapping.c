
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int device_type; } ;
struct wacom_wac {struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 scalar_t__ WACOM_BATTERY_USAGE (struct hid_usage*) ;
 int WACOM_DEVICETYPE_DIRECT ;
 scalar_t__ WACOM_DIRECT_DEVICE (struct hid_field*) ;
 scalar_t__ WACOM_FINGER_FIELD (struct hid_field*) ;
 scalar_t__ WACOM_PAD_FIELD (struct hid_field*) ;
 scalar_t__ WACOM_PEN_FIELD (struct hid_field*) ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 int wacom_wac_battery_usage_mapping (struct hid_device*,struct hid_field*,struct hid_usage*) ;
 int wacom_wac_finger_usage_mapping (struct hid_device*,struct hid_field*,struct hid_usage*) ;
 int wacom_wac_pad_usage_mapping (struct hid_device*,struct hid_field*,struct hid_usage*) ;
 int wacom_wac_pen_usage_mapping (struct hid_device*,struct hid_field*,struct hid_usage*) ;

void wacom_wac_usage_mapping(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom_wac->features;

 if (WACOM_DIRECT_DEVICE(field))
  features->device_type |= WACOM_DEVICETYPE_DIRECT;


 if (WACOM_BATTERY_USAGE(usage))
  wacom_wac_battery_usage_mapping(hdev, field, usage);
 else if (WACOM_PAD_FIELD(field))
  wacom_wac_pad_usage_mapping(hdev, field, usage);
 else if (WACOM_PEN_FIELD(field))
  wacom_wac_pen_usage_mapping(hdev, field, usage);
 else if (WACOM_FINGER_FIELD(field))
  wacom_wac_finger_usage_mapping(hdev, field, usage);
}
