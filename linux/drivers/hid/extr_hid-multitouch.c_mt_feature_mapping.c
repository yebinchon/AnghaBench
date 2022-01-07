
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maxcontacts; } ;
struct mt_device {int is_buttonpad; TYPE_1__ mtclass; int maxcontacts; } ;
struct hid_usage {int hid; size_t usage_index; } ;
struct hid_field {size_t report_count; int report; int * value; int logical_maximum; } ;
struct hid_device {int dev; } ;




 int MT_BUTTONTYPE_CLICKPAD ;
 int MT_MAX_MAXCONTACT ;
 int dev_err (int *,char*) ;
 struct mt_device* hid_get_drvdata (struct hid_device*) ;
 int mt_get_feature (struct hid_device*,int ) ;

__attribute__((used)) static void mt_feature_mapping(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage)
{
 struct mt_device *td = hid_get_drvdata(hdev);

 switch (usage->hid) {
 case 128:
  mt_get_feature(hdev, field->report);

  td->maxcontacts = field->value[0];
  if (!td->maxcontacts &&
      field->logical_maximum <= MT_MAX_MAXCONTACT)
   td->maxcontacts = field->logical_maximum;
  if (td->mtclass.maxcontacts)

   td->maxcontacts = td->mtclass.maxcontacts;

  break;
 case 129:
  if (usage->usage_index >= field->report_count) {
   dev_err(&hdev->dev, "HID_DG_BUTTONTYPE out of range\n");
   break;
  }

  mt_get_feature(hdev, field->report);
  if (field->value[usage->usage_index] == MT_BUTTONTYPE_CLICKPAD)
   td->is_buttonpad = 1;

  break;
 case 0xff0000c5:

  if (usage->usage_index == 0)
   mt_get_feature(hdev, field->report);
  break;
 }
}
