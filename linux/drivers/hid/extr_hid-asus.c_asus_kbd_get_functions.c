
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
typedef int buf ;


 int ENOMEM ;
 int FEATURE_KBD_REPORT_ID ;
 int FEATURE_KBD_REPORT_SIZE ;
 int GFP_KERNEL ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 int asus_kbd_set_report (struct hid_device*,int*,int) ;
 int hid_err (struct hid_device*,char*,int) ;
 int hid_hw_raw_request (struct hid_device*,int,int*,int ,int ,int ) ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;

__attribute__((used)) static int asus_kbd_get_functions(struct hid_device *hdev,
      unsigned char *kbd_func)
{
 u8 buf[] = { FEATURE_KBD_REPORT_ID, 0x05, 0x20, 0x31, 0x00, 0x08 };
 u8 *readbuf;
 int ret;

 ret = asus_kbd_set_report(hdev, buf, sizeof(buf));
 if (ret < 0) {
  hid_err(hdev, "Asus failed to send configuration command: %d\n", ret);
  return ret;
 }

 readbuf = kzalloc(FEATURE_KBD_REPORT_SIZE, GFP_KERNEL);
 if (!readbuf)
  return -ENOMEM;

 ret = hid_hw_raw_request(hdev, FEATURE_KBD_REPORT_ID, readbuf,
     FEATURE_KBD_REPORT_SIZE, HID_FEATURE_REPORT,
     HID_REQ_GET_REPORT);
 if (ret < 0) {
  hid_err(hdev, "Asus failed to request functions: %d\n", ret);
  kfree(readbuf);
  return ret;
 }

 *kbd_func = readbuf[6];

 kfree(readbuf);
 return ret;
}
