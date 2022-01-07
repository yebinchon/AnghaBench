
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {TYPE_1__* intf; int urbin; int lock; int iofl; } ;
struct hid_device {int quirks; struct usbhid_device* driver_data; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; } ;


 int HID_IN_POLLING ;
 int HID_OPENED ;
 int HID_QUIRK_ALWAYS_POLL ;
 int clear_bit (int ,int *) ;
 int hid_cancel_delayed_stuff (struct usbhid_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void usbhid_close(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;






 spin_lock_irq(&usbhid->lock);
 clear_bit(HID_OPENED, &usbhid->iofl);
 if (!(hid->quirks & HID_QUIRK_ALWAYS_POLL))
  clear_bit(HID_IN_POLLING, &usbhid->iofl);
 spin_unlock_irq(&usbhid->lock);

 if (hid->quirks & HID_QUIRK_ALWAYS_POLL)
  return;

 hid_cancel_delayed_stuff(usbhid);
 usb_kill_urb(usbhid->urbin);
 usbhid->intf->needs_remote_wakeup = 0;
}
