
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int lock; } ;
struct hid_report {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int __usbhid_submit_report (struct hid_device*,struct hid_report*,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void usbhid_submit_report(struct hid_device *hid, struct hid_report *report, unsigned char dir)
{
 struct usbhid_device *usbhid = hid->driver_data;
 unsigned long flags;

 spin_lock_irqsave(&usbhid->lock, flags);
 __usbhid_submit_report(hid, report, dir);
 spin_unlock_irqrestore(&usbhid->lock, flags);
}
