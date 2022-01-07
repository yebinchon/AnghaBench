
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int lock; int iofl; int urbin; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int ENOSPC ;
 int GFP_ATOMIC ;
 int HID_DISCONNECTED ;
 int HID_IN_POLLING ;
 int HID_IN_RUNNING ;
 int HID_NO_BANDWIDTH ;
 int HID_SUSPENDED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int hid_start_in(struct hid_device *hid)
{
 unsigned long flags;
 int rc = 0;
 struct usbhid_device *usbhid = hid->driver_data;

 spin_lock_irqsave(&usbhid->lock, flags);
 if (test_bit(HID_IN_POLLING, &usbhid->iofl) &&
     !test_bit(HID_DISCONNECTED, &usbhid->iofl) &&
     !test_bit(HID_SUSPENDED, &usbhid->iofl) &&
     !test_and_set_bit(HID_IN_RUNNING, &usbhid->iofl)) {
  rc = usb_submit_urb(usbhid->urbin, GFP_ATOMIC);
  if (rc != 0) {
   clear_bit(HID_IN_RUNNING, &usbhid->iofl);
   if (rc == -ENOSPC)
    set_bit(HID_NO_BANDWIDTH, &usbhid->iofl);
  } else {
   clear_bit(HID_NO_BANDWIDTH, &usbhid->iofl);
  }
 }
 spin_unlock_irqrestore(&usbhid->lock, flags);
 return rc;
}
