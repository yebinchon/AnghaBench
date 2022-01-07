
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hid_sensor_hub_device {int hdev; } ;
struct hid_report {int maxfield; struct hid_field** field; } ;
struct hid_field {int maxusage; TYPE_1__* usage; } ;
struct TYPE_2__ {scalar_t__ hid; int usage_index; } ;


 int EINVAL ;
 int HID_FEATURE_REPORT ;
 struct hid_report* sensor_hub_report (scalar_t__,int ,int ) ;

int hid_sensor_get_usage_index(struct hid_sensor_hub_device *hsdev,
    u32 report_id, int field_index, u32 usage_id)
{
 struct hid_report *report;
 struct hid_field *field;
 int i;

 report = sensor_hub_report(report_id, hsdev->hdev, HID_FEATURE_REPORT);
 if (!report || (field_index >= report->maxfield))
  goto done_proc;

 field = report->field[field_index];
 for (i = 0; i < field->maxusage; ++i) {
  if (field->usage[i].hid == usage_id)
   return field->usage[i].usage_index;
 }

done_proc:
 return -EINVAL;
}
