
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int lock; int iofl; } ;
struct usb_interface {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int HID_RESET_PENDING ;
 int hid_cease_io (struct usbhid_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct hid_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int hid_pre_reset(struct usb_interface *intf)
{
 struct hid_device *hid = usb_get_intfdata(intf);
 struct usbhid_device *usbhid = hid->driver_data;

 spin_lock_irq(&usbhid->lock);
 set_bit(HID_RESET_PENDING, &usbhid->iofl);
 spin_unlock_irq(&usbhid->lock);
 hid_cease_io(usbhid);

 return 0;
}
