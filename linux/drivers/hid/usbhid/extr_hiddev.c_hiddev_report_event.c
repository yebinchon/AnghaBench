
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uref ;
struct hiddev_usage_ref {int field_index; int report_id; int report_type; } ;
struct hid_report {unsigned int type; int id; } ;
struct hid_device {int dummy; } ;


 unsigned int HID_FEATURE_REPORT ;
 int HID_FIELD_INDEX_NONE ;
 unsigned int HID_INPUT_REPORT ;
 unsigned int HID_OUTPUT_REPORT ;
 int HID_REPORT_TYPE_FEATURE ;
 int HID_REPORT_TYPE_INPUT ;
 int HID_REPORT_TYPE_OUTPUT ;
 int hiddev_send_event (struct hid_device*,struct hiddev_usage_ref*) ;
 int memset (struct hiddev_usage_ref*,int ,int) ;

void hiddev_report_event(struct hid_device *hid, struct hid_report *report)
{
 unsigned type = report->type;
 struct hiddev_usage_ref uref;

 memset(&uref, 0, sizeof(uref));
 uref.report_type =
   (type == HID_INPUT_REPORT) ? HID_REPORT_TYPE_INPUT :
   ((type == HID_OUTPUT_REPORT) ? HID_REPORT_TYPE_OUTPUT :
    ((type == HID_FEATURE_REPORT) ? HID_REPORT_TYPE_FEATURE : 0));
 uref.report_id = report->id;
 uref.field_index = HID_FIELD_INDEX_NONE;

 hiddev_send_event(hid, &uref);
}
