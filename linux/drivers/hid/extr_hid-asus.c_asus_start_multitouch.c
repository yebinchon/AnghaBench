
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef int buf ;


 int ENOMEM ;

 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 int hid_err (struct hid_device*,char*,int) ;
 int hid_hw_raw_request (struct hid_device*,unsigned char,unsigned char*,int,int ,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (unsigned char const*,int,int ) ;

__attribute__((used)) static int asus_start_multitouch(struct hid_device *hdev)
{
 int ret;
 static const unsigned char buf[] = {
  128, 0x00, 0x03, 0x01, 0x00
 };
 unsigned char *dmabuf = kmemdup(buf, sizeof(buf), GFP_KERNEL);

 if (!dmabuf) {
  ret = -ENOMEM;
  hid_err(hdev, "Asus failed to alloc dma buf: %d\n", ret);
  return ret;
 }

 ret = hid_hw_raw_request(hdev, dmabuf[0], dmabuf, sizeof(buf),
     HID_FEATURE_REPORT, HID_REQ_SET_REPORT);

 kfree(dmabuf);

 if (ret != sizeof(buf)) {
  hid_err(hdev, "Asus failed to start multitouch: %d\n", ret);
  return ret;
 }

 return 0;
}
