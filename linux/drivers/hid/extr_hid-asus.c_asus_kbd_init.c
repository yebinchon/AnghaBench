
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
typedef int buf ;


 int FEATURE_KBD_REPORT_ID ;
 int asus_kbd_set_report (struct hid_device*,int*,int) ;
 int hid_err (struct hid_device*,char*,int) ;

__attribute__((used)) static int asus_kbd_init(struct hid_device *hdev)
{
 u8 buf[] = { FEATURE_KBD_REPORT_ID, 0x41, 0x53, 0x55, 0x53, 0x20, 0x54,
       0x65, 0x63, 0x68, 0x2e, 0x49, 0x6e, 0x63, 0x2e, 0x00 };
 int ret;

 ret = asus_kbd_set_report(hdev, buf, sizeof(buf));
 if (ret < 0)
  hid_err(hdev, "Asus failed to send init command: %d\n", ret);

 return ret;
}
