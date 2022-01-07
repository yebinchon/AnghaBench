
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned char HID_OUTPUT_REPORT ;
 int HID_REQ_SET_REPORT ;
 int hid_hw_output_report (struct hid_device*,int *,size_t) ;
 int hid_hw_raw_request (struct hid_device*,int ,int *,size_t,unsigned char,int ) ;
 int kfree (int *) ;
 int * kmemdup (int *,size_t,int ) ;

__attribute__((used)) static int cp2112_hid_output(struct hid_device *hdev, u8 *data, size_t count,
        unsigned char report_type)
{
 u8 *buf;
 int ret;

 buf = kmemdup(data, count, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 if (report_type == HID_OUTPUT_REPORT)
  ret = hid_hw_output_report(hdev, buf, count);
 else
  ret = hid_hw_raw_request(hdev, buf[0], buf, count, report_type,
    HID_REQ_SET_REPORT);

 kfree(buf);
 return ret;
}
