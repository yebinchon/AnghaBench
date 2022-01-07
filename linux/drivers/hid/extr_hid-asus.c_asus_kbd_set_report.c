
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;


 int ENOMEM ;
 int FEATURE_KBD_REPORT_ID ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 int hid_hw_raw_request (struct hid_device*,int ,unsigned char*,size_t,int ,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (int *,size_t,int ) ;

__attribute__((used)) static int asus_kbd_set_report(struct hid_device *hdev, u8 *buf, size_t buf_size)
{
 unsigned char *dmabuf;
 int ret;

 dmabuf = kmemdup(buf, buf_size, GFP_KERNEL);
 if (!dmabuf)
  return -ENOMEM;

 ret = hid_hw_raw_request(hdev, FEATURE_KBD_REPORT_ID, dmabuf,
     buf_size, HID_FEATURE_REPORT,
     HID_REQ_SET_REPORT);
 kfree(dmabuf);

 return ret;
}
