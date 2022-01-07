
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_report_enum {struct hid_report** report_id_hash; } ;
struct hid_report {TYPE_1__** field; } ;
struct hid_device {struct hid_report_enum* report_enum; } ;
struct TYPE_2__ {int report_count; } ;


 size_t HID_OUTPUT_REPORT ;

__attribute__((used)) static int hidpp_get_report_length(struct hid_device *hdev, int id)
{
 struct hid_report_enum *re;
 struct hid_report *report;

 re = &(hdev->report_enum[HID_OUTPUT_REPORT]);
 report = re->report_id_hash[id];
 if (!report)
  return 0;

 return report->field[0]->report_count + 1;
}
