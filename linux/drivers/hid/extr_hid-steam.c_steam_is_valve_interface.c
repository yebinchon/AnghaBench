
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report_enum {int report_list; } ;
struct hid_device {struct hid_report_enum* report_enum; } ;


 size_t HID_FEATURE_REPORT ;
 int list_empty (int *) ;

__attribute__((used)) static bool steam_is_valve_interface(struct hid_device *hdev)
{
 struct hid_report_enum *rep_enum;
 rep_enum = &hdev->report_enum[HID_FEATURE_REPORT];
 return !list_empty(&rep_enum->report_list);
}
