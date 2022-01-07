
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int lock; int iofl; scalar_t__ urbout; scalar_t__ retry_delay; int reset_work; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int HID_CLEAR_HALT ;
 int HID_CTRL_RUNNING ;
 int HID_OUT_RUNNING ;
 int HID_RESET_PENDING ;
 int HID_STARTED ;
 int HID_SUSPENDED ;
 int clear_bit (int ,int *) ;
 int hid_io_error (struct hid_device*) ;
 scalar_t__ hid_start_in (struct hid_device*) ;
 int schedule_work (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_bit (int ,int *) ;
 int usbhid_mark_busy (struct usbhid_device*) ;
 int usbhid_restart_ctrl_queue (struct usbhid_device*) ;
 int usbhid_restart_out_queue (struct usbhid_device*) ;

__attribute__((used)) static void hid_restart_io(struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;
 int clear_halt = test_bit(HID_CLEAR_HALT, &usbhid->iofl);
 int reset_pending = test_bit(HID_RESET_PENDING, &usbhid->iofl);

 spin_lock_irq(&usbhid->lock);
 clear_bit(HID_SUSPENDED, &usbhid->iofl);
 usbhid_mark_busy(usbhid);

 if (clear_halt || reset_pending)
  schedule_work(&usbhid->reset_work);
 usbhid->retry_delay = 0;
 spin_unlock_irq(&usbhid->lock);

 if (reset_pending || !test_bit(HID_STARTED, &usbhid->iofl))
  return;

 if (!clear_halt) {
  if (hid_start_in(hid) < 0)
   hid_io_error(hid);
 }

 spin_lock_irq(&usbhid->lock);
 if (usbhid->urbout && !test_bit(HID_OUT_RUNNING, &usbhid->iofl))
  usbhid_restart_out_queue(usbhid);
 if (!test_bit(HID_CTRL_RUNNING, &usbhid->iofl))
  usbhid_restart_ctrl_queue(usbhid);
 spin_unlock_irq(&usbhid->lock);
}
