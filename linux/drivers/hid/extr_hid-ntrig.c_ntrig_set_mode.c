
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_report {int dummy; } ;
struct hid_device {TYPE_1__* report_enum; } ;
typedef int __u8 ;
struct TYPE_2__ {struct hid_report** report_id_hash; } ;


 size_t HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 int hid_hw_request (struct hid_device*,struct hid_report*,int ) ;

__attribute__((used)) static inline void ntrig_set_mode(struct hid_device *hdev, const int mode)
{
 struct hid_report *report;
 __u8 mode_commands[4] = { 0xe, 0xf, 0x1b, 0x10 };

 if (mode < 0 || mode > 3)
  return;

 report = hdev->report_enum[HID_FEATURE_REPORT].
   report_id_hash[mode_commands[mode]];

 if (!report)
  return;

 hid_hw_request(hdev, report, HID_REQ_GET_REPORT);
}
