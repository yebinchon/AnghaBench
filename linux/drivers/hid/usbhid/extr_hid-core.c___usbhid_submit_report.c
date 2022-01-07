
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbhid_device {int outhead; int outtail; int ctrlhead; int ctrltail; int intf; int iofl; scalar_t__ urbctrl; int lock; scalar_t__ last_ctrl; TYPE_2__* ctrl; scalar_t__ urbout; scalar_t__ last_out; TYPE_1__* out; } ;
struct hid_report {scalar_t__ type; } ;
struct hid_device {int quirks; struct usbhid_device* driver_data; } ;
struct TYPE_4__ {unsigned char dir; struct hid_report* report; void* raw_report; } ;
struct TYPE_3__ {struct hid_report* report; void* raw_report; } ;


 int GFP_ATOMIC ;
 int HID_CONTROL_FIFO_SIZE ;
 int HID_CTRL_RUNNING ;
 int HID_DISCONNECTED ;
 int HID_OUTPUT_FIFO_SIZE ;
 scalar_t__ HID_OUTPUT_REPORT ;
 int HID_OUT_RUNNING ;
 int HID_QUIRK_NOGET ;
 int HZ ;
 unsigned char USB_DIR_IN ;
 unsigned char USB_DIR_OUT ;
 void* hid_alloc_report_buf (struct hid_report*,int ) ;
 int hid_output_report (struct hid_report*,void*) ;
 int hid_warn (struct hid_device*,char*) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int usb_autopm_get_interface_no_resume (int ) ;
 int usb_autopm_put_interface_async (int ) ;
 int usb_block_urb (scalar_t__) ;
 int usb_unblock_urb (scalar_t__) ;
 int usb_unlink_urb (scalar_t__) ;
 int usbhid_restart_ctrl_queue (struct usbhid_device*) ;
 int usbhid_restart_out_queue (struct usbhid_device*) ;

__attribute__((used)) static void __usbhid_submit_report(struct hid_device *hid, struct hid_report *report,
       unsigned char dir)
{
 int head;
 struct usbhid_device *usbhid = hid->driver_data;

 if (((hid->quirks & HID_QUIRK_NOGET) && dir == USB_DIR_IN) ||
  test_bit(HID_DISCONNECTED, &usbhid->iofl))
  return;

 if (usbhid->urbout && dir == USB_DIR_OUT && report->type == HID_OUTPUT_REPORT) {
  if ((head = (usbhid->outhead + 1) & (HID_OUTPUT_FIFO_SIZE - 1)) == usbhid->outtail) {
   hid_warn(hid, "output queue full\n");
   return;
  }

  usbhid->out[usbhid->outhead].raw_report = hid_alloc_report_buf(report, GFP_ATOMIC);
  if (!usbhid->out[usbhid->outhead].raw_report) {
   hid_warn(hid, "output queueing failed\n");
   return;
  }
  hid_output_report(report, usbhid->out[usbhid->outhead].raw_report);
  usbhid->out[usbhid->outhead].report = report;
  usbhid->outhead = head;


  if (!test_bit(HID_OUT_RUNNING, &usbhid->iofl)) {
   usbhid_restart_out_queue(usbhid);


  } else if (time_after(jiffies, usbhid->last_out + HZ * 5)) {


   usb_autopm_get_interface_no_resume(usbhid->intf);






   usb_block_urb(usbhid->urbout);


   spin_unlock(&usbhid->lock);

   usb_unlink_urb(usbhid->urbout);
   spin_lock(&usbhid->lock);
   usb_unblock_urb(usbhid->urbout);


   if (!test_bit(HID_OUT_RUNNING, &usbhid->iofl))
    usbhid_restart_out_queue(usbhid);


   usb_autopm_put_interface_async(usbhid->intf);
  }
  return;
 }

 if ((head = (usbhid->ctrlhead + 1) & (HID_CONTROL_FIFO_SIZE - 1)) == usbhid->ctrltail) {
  hid_warn(hid, "control queue full\n");
  return;
 }

 if (dir == USB_DIR_OUT) {
  usbhid->ctrl[usbhid->ctrlhead].raw_report = hid_alloc_report_buf(report, GFP_ATOMIC);
  if (!usbhid->ctrl[usbhid->ctrlhead].raw_report) {
   hid_warn(hid, "control queueing failed\n");
   return;
  }
  hid_output_report(report, usbhid->ctrl[usbhid->ctrlhead].raw_report);
 }
 usbhid->ctrl[usbhid->ctrlhead].report = report;
 usbhid->ctrl[usbhid->ctrlhead].dir = dir;
 usbhid->ctrlhead = head;


 if (!test_bit(HID_CTRL_RUNNING, &usbhid->iofl)) {
  usbhid_restart_ctrl_queue(usbhid);


 } else if (time_after(jiffies, usbhid->last_ctrl + HZ * 5)) {


  usb_autopm_get_interface_no_resume(usbhid->intf);






  usb_block_urb(usbhid->urbctrl);


  spin_unlock(&usbhid->lock);

  usb_unlink_urb(usbhid->urbctrl);
  spin_lock(&usbhid->lock);
  usb_unblock_urb(usbhid->urbctrl);


  if (!test_bit(HID_CTRL_RUNNING, &usbhid->iofl))
   usbhid_restart_ctrl_queue(usbhid);


  usb_autopm_put_interface_async(usbhid->intf);
 }
}
