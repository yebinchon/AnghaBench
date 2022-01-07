
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;


 int hid_driver ;
 struct usb_interface* usb_find_interface (int *,int) ;

struct usb_interface *usbhid_find_interface(int minor)
{
 return usb_find_interface(&hid_driver, minor);
}
