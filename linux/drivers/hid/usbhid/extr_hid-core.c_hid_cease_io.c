
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int urbout; int urbctrl; int urbin; int io_retry; } ;


 int del_timer_sync (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void hid_cease_io(struct usbhid_device *usbhid)
{
 del_timer_sync(&usbhid->io_retry);
 usb_kill_urb(usbhid->urbin);
 usb_kill_urb(usbhid->urbctrl);
 usb_kill_urb(usbhid->urbout);
}
