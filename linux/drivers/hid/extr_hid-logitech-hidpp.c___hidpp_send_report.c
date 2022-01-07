
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_report {int report_id; int device_index; } ;
struct hidpp_device {int very_long_report_length; int quirks; } ;
struct hid_device {int dummy; } ;


 int ENODEV ;
 int HIDPP_QUIRK_FORCE_OUTPUT_REPORTS ;
 int HIDPP_REPORT_LONG_LENGTH ;
 int HIDPP_REPORT_SHORT_LENGTH ;
 int HID_OUTPUT_REPORT ;
 int HID_REQ_SET_REPORT ;



 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_output_report (struct hid_device*,int *,int) ;
 int hid_hw_raw_request (struct hid_device*,int,int *,int,int ,int ) ;

__attribute__((used)) static int __hidpp_send_report(struct hid_device *hdev,
    struct hidpp_report *hidpp_report)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);
 int fields_count, ret;

 switch (hidpp_report->report_id) {
 case 129:
  fields_count = HIDPP_REPORT_SHORT_LENGTH;
  break;
 case 130:
  fields_count = HIDPP_REPORT_LONG_LENGTH;
  break;
 case 128:
  fields_count = hidpp->very_long_report_length;
  break;
 default:
  return -ENODEV;
 }





 hidpp_report->device_index = 0xff;

 if (hidpp->quirks & HIDPP_QUIRK_FORCE_OUTPUT_REPORTS) {
  ret = hid_hw_output_report(hdev, (u8 *)hidpp_report, fields_count);
 } else {
  ret = hid_hw_raw_request(hdev, hidpp_report->report_id,
   (u8 *)hidpp_report, fields_count, HID_OUTPUT_REPORT,
   HID_REQ_SET_REPORT);
 }

 return ret == fields_count ? 0 : -1;
}
