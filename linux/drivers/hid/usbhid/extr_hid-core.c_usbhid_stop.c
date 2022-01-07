
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {int * urbout; int * urbctrl; int * urbin; int lock; int iofl; TYPE_1__* intf; } ;
struct hid_device {int quirks; scalar_t__ claimed; struct usbhid_device* driver_data; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; } ;


 int HID_DISCONNECTED ;
 int HID_IN_POLLING ;
 int HID_QUIRK_ALWAYS_POLL ;
 int HID_STARTED ;
 scalar_t__ WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int hid_cancel_delayed_stuff (struct usbhid_device*) ;
 int hid_free_buffers (int ,struct hid_device*) ;
 int hid_to_usb_dev (struct hid_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_free_urb (int *) ;
 int usb_kill_urb (int *) ;

__attribute__((used)) static void usbhid_stop(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;

 if (WARN_ON(!usbhid))
  return;

 if (hid->quirks & HID_QUIRK_ALWAYS_POLL) {
  clear_bit(HID_IN_POLLING, &usbhid->iofl);
  usbhid->intf->needs_remote_wakeup = 0;
 }

 clear_bit(HID_STARTED, &usbhid->iofl);
 spin_lock_irq(&usbhid->lock);
 set_bit(HID_DISCONNECTED, &usbhid->iofl);
 spin_unlock_irq(&usbhid->lock);
 usb_kill_urb(usbhid->urbin);
 usb_kill_urb(usbhid->urbout);
 usb_kill_urb(usbhid->urbctrl);

 hid_cancel_delayed_stuff(usbhid);

 hid->claimed = 0;

 usb_free_urb(usbhid->urbin);
 usb_free_urb(usbhid->urbctrl);
 usb_free_urb(usbhid->urbout);
 usbhid->urbin = ((void*)0);
 usbhid->urbctrl = ((void*)0);
 usbhid->urbout = ((void*)0);

 hid_free_buffers(hid_to_usb_dev(hid), hid);
}
