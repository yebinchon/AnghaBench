
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {TYPE_1__* intf; struct hid_device* hid; } ;
struct timer_list {int dummy; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct usbhid_device* from_timer (int ,struct timer_list*,int ) ;
 int hid_io_error (struct hid_device*) ;
 scalar_t__ hid_start_in (struct hid_device*) ;
 int io_retry ;
 struct usbhid_device* usbhid ;

__attribute__((used)) static void hid_retry_timeout(struct timer_list *t)
{
 struct usbhid_device *usbhid = from_timer(usbhid, t, io_retry);
 struct hid_device *hid = usbhid->hid;

 dev_dbg(&usbhid->intf->dev, "retrying intr urb\n");
 if (hid_start_in(hid))
  hid_io_error(hid);
}
