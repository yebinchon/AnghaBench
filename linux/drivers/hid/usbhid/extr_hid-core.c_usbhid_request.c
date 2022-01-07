
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;




 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int usbhid_submit_report (struct hid_device*,struct hid_report*,int ) ;

__attribute__((used)) static void usbhid_request(struct hid_device *hid, struct hid_report *rep, int reqtype)
{
 switch (reqtype) {
 case 129:
  usbhid_submit_report(hid, rep, USB_DIR_IN);
  break;
 case 128:
  usbhid_submit_report(hid, rep, USB_DIR_OUT);
  break;
 }
}
