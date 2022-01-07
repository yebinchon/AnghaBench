
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int intf; } ;
struct hid_device {struct usbhid_device* driver_data; } ;




 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int usbhid_power(struct hid_device *hid, int lvl)
{
 struct usbhid_device *usbhid = hid->driver_data;
 int r = 0;

 switch (lvl) {
 case 129:
  r = usb_autopm_get_interface(usbhid->intf);
  break;

 case 128:
  usb_autopm_put_interface(usbhid->intf);
  break;
 }

 return r;
}
