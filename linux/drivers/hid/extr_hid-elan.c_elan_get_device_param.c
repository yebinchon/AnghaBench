
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;


 unsigned char ELAN_FEATURE_REPORT ;
 int ELAN_FEATURE_SIZE ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 int HID_REQ_SET_REPORT ;
 int hid_err (struct hid_device*,char*,unsigned char,int) ;
 int hid_hw_raw_request (struct hid_device*,unsigned char,unsigned char*,int,int ,int ) ;

__attribute__((used)) static int elan_get_device_param(struct hid_device *hdev,
     unsigned char *dmabuf, unsigned char param)
{
 int ret;

 dmabuf[0] = ELAN_FEATURE_REPORT;
 dmabuf[1] = 0x05;
 dmabuf[2] = 0x03;
 dmabuf[3] = param;
 dmabuf[4] = 0x01;

 ret = hid_hw_raw_request(hdev, ELAN_FEATURE_REPORT, dmabuf,
     ELAN_FEATURE_SIZE, HID_FEATURE_REPORT,
     HID_REQ_SET_REPORT);
 if (ret != ELAN_FEATURE_SIZE) {
  hid_err(hdev, "Set report error for parm %d: %d\n", param, ret);
  return ret;
 }

 ret = hid_hw_raw_request(hdev, ELAN_FEATURE_REPORT, dmabuf,
     ELAN_FEATURE_SIZE, HID_FEATURE_REPORT,
     HID_REQ_GET_REPORT);
 if (ret != ELAN_FEATURE_SIZE) {
  hid_err(hdev, "Get report error for parm %d: %d\n", param, ret);
  return ret;
 }

 return 0;
}
