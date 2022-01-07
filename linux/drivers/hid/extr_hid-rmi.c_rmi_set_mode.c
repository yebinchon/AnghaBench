
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int txbuf ;
struct hid_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 int const RMI_SET_RMI_MODE_REPORT_ID ;
 int dev_err (int *,char*,int const,int) ;
 int hid_hw_raw_request (struct hid_device*,int const,int const*,int,int ,int ) ;
 int kfree (int const*) ;
 int const* kmemdup (int const*,int,int ) ;

__attribute__((used)) static int rmi_set_mode(struct hid_device *hdev, u8 mode)
{
 int ret;
 const u8 txbuf[2] = {RMI_SET_RMI_MODE_REPORT_ID, mode};
 u8 *buf;

 buf = kmemdup(txbuf, sizeof(txbuf), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = hid_hw_raw_request(hdev, RMI_SET_RMI_MODE_REPORT_ID, buf,
   sizeof(txbuf), HID_FEATURE_REPORT, HID_REQ_SET_REPORT);
 kfree(buf);
 if (ret < 0) {
  dev_err(&hdev->dev, "unable to set rmi mode to %d (%d)\n", mode,
   ret);
  return ret;
 }

 return 0;
}
