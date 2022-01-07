
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int wait; int intf; int iofl; int ctrltail; int ctrlhead; } ;
struct hid_device {int dummy; } ;


 int HID_CTRL_RUNNING ;
 int HID_RESET_PENDING ;
 int HID_SUSPENDED ;
 int WARN_ON (int ) ;
 int clear_bit (int ,int *) ;
 int hid_dbg (struct hid_device*,char*,int ,int ) ;
 scalar_t__ hid_submit_ctrl (struct hid_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_autopm_get_interface_async (int ) ;
 int usb_autopm_put_interface_async (int ) ;
 int usb_autopm_put_interface_no_suspend (int ) ;
 struct hid_device* usb_get_intfdata (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int usbhid_restart_ctrl_queue(struct usbhid_device *usbhid)
{
 struct hid_device *hid = usb_get_intfdata(usbhid->intf);
 int kicked;
 int r;

 WARN_ON(hid == ((void*)0));
 if (!hid || test_bit(HID_RESET_PENDING, &usbhid->iofl) ||
   test_bit(HID_SUSPENDED, &usbhid->iofl))
  return 0;

 if ((kicked = (usbhid->ctrlhead != usbhid->ctrltail))) {
  hid_dbg(hid, "Kicking head %d tail %d", usbhid->ctrlhead, usbhid->ctrltail);


  r = usb_autopm_get_interface_async(usbhid->intf);
  if (r < 0)
   return r;





  if (test_bit(HID_SUSPENDED, &usbhid->iofl)) {
   usb_autopm_put_interface_no_suspend(usbhid->intf);
   return r;
  }


  set_bit(HID_CTRL_RUNNING, &usbhid->iofl);
  if (hid_submit_ctrl(hid)) {
   clear_bit(HID_CTRL_RUNNING, &usbhid->iofl);
   usb_autopm_put_interface_async(usbhid->intf);
  }
  wake_up(&usbhid->wait);
 }
 return kicked;
}
