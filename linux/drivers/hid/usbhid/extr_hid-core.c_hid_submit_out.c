
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbhid_device {size_t outtail; int last_out; TYPE_2__* urbout; TYPE_1__* out; int outbuf; } ;
struct hid_report {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_4__ {int transfer_buffer_length; int dev; } ;
struct TYPE_3__ {char* raw_report; struct hid_report* report; } ;


 int GFP_ATOMIC ;
 int dbg_hid (char*) ;
 int hid_err (struct hid_device*,char*,int) ;
 int hid_report_len (struct hid_report*) ;
 int hid_to_usb_dev (struct hid_device*) ;
 int jiffies ;
 int kfree (char*) ;
 int memcpy (int ,char*,int ) ;
 int usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static int hid_submit_out(struct hid_device *hid)
{
 struct hid_report *report;
 char *raw_report;
 struct usbhid_device *usbhid = hid->driver_data;
 int r;

 report = usbhid->out[usbhid->outtail].report;
 raw_report = usbhid->out[usbhid->outtail].raw_report;

 usbhid->urbout->transfer_buffer_length = hid_report_len(report);
 usbhid->urbout->dev = hid_to_usb_dev(hid);
 if (raw_report) {
  memcpy(usbhid->outbuf, raw_report,
    usbhid->urbout->transfer_buffer_length);
  kfree(raw_report);
  usbhid->out[usbhid->outtail].raw_report = ((void*)0);
 }

 dbg_hid("submitting out urb\n");

 r = usb_submit_urb(usbhid->urbout, GFP_ATOMIC);
 if (r < 0) {
  hid_err(hid, "usb_submit_urb(out) failed: %d\n", r);
  return r;
 }
 usbhid->last_out = jiffies;
 return 0;
}
