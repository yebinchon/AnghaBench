
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int product; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;


 int hid_hw_output_report (struct hid_device*,unsigned char*,int) ;
 int hid_hw_raw_request (struct hid_device*,int,unsigned char*,int,int ,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;

__attribute__((used)) static int lenovo_send_cmd_cptkbd(struct hid_device *hdev,
   unsigned char byte2, unsigned char byte3)
{
 int ret;
 unsigned char *buf;

 buf = kzalloc(3, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 buf[0] = 0x18;
 buf[1] = byte2;
 buf[2] = byte3;

 switch (hdev->product) {
 case 128:
  ret = hid_hw_raw_request(hdev, 0x13, buf, 3,
     HID_FEATURE_REPORT, HID_REQ_SET_REPORT);
  break;
 case 129:
  ret = hid_hw_output_report(hdev, buf, 3);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 kfree(buf);

 return ret < 0 ? ret : 0;
}
