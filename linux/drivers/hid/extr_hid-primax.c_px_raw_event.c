
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_report {int id; } ;
struct hid_device {int dummy; } ;


 int HID_INPUT_REPORT ;
 int hid_info (struct hid_device*,char*,int) ;
 int hid_report_raw_event (struct hid_device*,int ,int*,int,int ) ;

__attribute__((used)) static int px_raw_event(struct hid_device *hid, struct hid_report *report,
  u8 *data, int size)
{
 int idx = size;

 switch (report->id) {
 case 0:
  while (--idx > 1) {
   if (data[idx] < 0xE0 || data[idx] > 0xE7)
    continue;
   data[0] |= (1 << (data[idx] - 0xE0));
   data[idx] = 0;
  }
  hid_report_raw_event(hid, HID_INPUT_REPORT, data, size, 0);
  return 1;

 default:

  hid_info(hid, "unknown report type %d\n", report->id);
  break;
 }

 return 0;
}
