
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int lock; int iofl; } ;
struct usb_interface {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int HID_DISCONNECTED ;
 scalar_t__ WARN_ON (int) ;
 int hid_destroy_device (struct hid_device*) ;
 int kfree (struct usbhid_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct hid_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void usbhid_disconnect(struct usb_interface *intf)
{
 struct hid_device *hid = usb_get_intfdata(intf);
 struct usbhid_device *usbhid;

 if (WARN_ON(!hid))
  return;

 usbhid = hid->driver_data;
 spin_lock_irq(&usbhid->lock);
 set_bit(HID_DISCONNECTED, &usbhid->iofl);
 spin_unlock_irq(&usbhid->lock);
 hid_destroy_device(hid);
 kfree(usbhid);
}
