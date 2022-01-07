
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_features {scalar_t__ type; int pressure_max; int unitExpo; int unit; int y_phy; int y_max; int x_phy; int x_max; int device_type; } ;
struct TYPE_2__ {struct wacom_features features; } ;
struct wacom {TYPE_1__ wacom_wac; } ;
struct hid_usage {int hid; } ;
struct hid_field {int logical_maximum; int unit_exponent; int unit; int physical_maximum; } ;
struct hid_device {int dummy; } ;


 scalar_t__ BAMBOO_PT ;
 scalar_t__ BAMBOO_TOUCH ;



 scalar_t__ HID_GENERIC ;
 int WACOM_DEVICETYPE_PEN ;
 int WACOM_DEVICETYPE_TOUCH ;
 int WACOM_FINGER_FIELD (struct hid_field*) ;
 int WACOM_PEN_FIELD (struct hid_field*) ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 unsigned int wacom_equivalent_usage (int ) ;
 int wacom_hid_usage_quirk (struct hid_device*,struct hid_field*,struct hid_usage*) ;
 int wacom_wac_usage_mapping (struct hid_device*,struct hid_field*,struct hid_usage*) ;

__attribute__((used)) static void wacom_usage_mapping(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_features *features = &wacom->wacom_wac.features;
 bool finger = WACOM_FINGER_FIELD(field);
 bool pen = WACOM_PEN_FIELD(field);
 unsigned equivalent_usage = wacom_equivalent_usage(usage->hid);






 if (pen)
  features->device_type |= WACOM_DEVICETYPE_PEN;
 else if (finger)
  features->device_type |= WACOM_DEVICETYPE_TOUCH;
 else
  return;

 wacom_hid_usage_quirk(hdev, field, usage);

 switch (equivalent_usage) {
 case 129:
  features->x_max = field->logical_maximum;
  if (finger) {
   features->x_phy = field->physical_maximum;
   if ((features->type != BAMBOO_PT) &&
       (features->type != BAMBOO_TOUCH)) {
    features->unit = field->unit;
    features->unitExpo = field->unit_exponent;
   }
  }
  break;
 case 128:
  features->y_max = field->logical_maximum;
  if (finger) {
   features->y_phy = field->physical_maximum;
   if ((features->type != BAMBOO_PT) &&
       (features->type != BAMBOO_TOUCH)) {
    features->unit = field->unit;
    features->unitExpo = field->unit_exponent;
   }
  }
  break;
 case 130:
  if (pen)
   features->pressure_max = field->logical_maximum;
  break;
 }

 if (features->type == HID_GENERIC)
  wacom_wac_usage_mapping(hdev, field, usage);
}
