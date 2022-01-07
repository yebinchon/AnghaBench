
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
typedef int report ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 int hid_hw_raw_request (struct hid_device*,int,int*,int,int ,int ) ;
 int kfree (int*) ;
 int* kmemdup (int const*,int,int ) ;

__attribute__((used)) static int sixaxis_set_operational_bt(struct hid_device *hdev)
{
 static const u8 report[] = { 0xf4, 0x42, 0x03, 0x00, 0x00 };
 u8 *buf;
 int ret;

 buf = kmemdup(report, sizeof(report), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = hid_hw_raw_request(hdev, buf[0], buf, sizeof(report),
      HID_FEATURE_REPORT, HID_REQ_SET_REPORT);

 kfree(buf);

 return ret;
}
