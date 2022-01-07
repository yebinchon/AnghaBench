
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {int quirks; } ;
struct wacom_wac {struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_usage {int hid; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;





 int WACOM_QUIRK_BATTERY ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 unsigned int wacom_equivalent_usage (int ) ;

__attribute__((used)) static void wacom_wac_battery_usage_mapping(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom_wac->features;
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);

 switch (equivalent_usage) {
 case 130:
 case 128:
 case 129:
  features->quirks |= WACOM_QUIRK_BATTERY;
  break;
 }
}
