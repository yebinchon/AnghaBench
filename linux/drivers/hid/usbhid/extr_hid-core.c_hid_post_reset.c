
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhid_device {int lock; int iofl; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_2__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;
struct hid_device {int dev_rsize; int dev_rdesc; struct usbhid_device* driver_data; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int HID_CLEAR_HALT ;
 int HID_DT_REPORT ;
 int HID_RESET_PENDING ;
 int clear_bit (int ,int *) ;
 int dbg_hid (char*) ;
 int hid_get_class_descriptor (struct usb_device*,int ,int ,char*,int ) ;
 int hid_restart_io (struct hid_device*) ;
 int hid_set_idle (struct usb_device*,int ,int ,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int memcmp (char*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct hid_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int hid_post_reset(struct usb_interface *intf)
{
 struct usb_device *dev = interface_to_usbdev (intf);
 struct hid_device *hid = usb_get_intfdata(intf);
 struct usbhid_device *usbhid = hid->driver_data;
 struct usb_host_interface *interface = intf->cur_altsetting;
 int status;
 char *rdesc;






 rdesc = kmalloc(hid->dev_rsize, GFP_KERNEL);
 if (!rdesc)
  return -ENOMEM;

 status = hid_get_class_descriptor(dev,
    interface->desc.bInterfaceNumber,
    HID_DT_REPORT, rdesc, hid->dev_rsize);
 if (status < 0) {
  dbg_hid("reading report descriptor failed (post_reset)\n");
  kfree(rdesc);
  return status;
 }
 status = memcmp(rdesc, hid->dev_rdesc, hid->dev_rsize);
 kfree(rdesc);
 if (status != 0) {
  dbg_hid("report descriptor changed\n");
  return -EPERM;
 }


 spin_lock_irq(&usbhid->lock);
 clear_bit(HID_RESET_PENDING, &usbhid->iofl);
 clear_bit(HID_CLEAR_HALT, &usbhid->iofl);
 spin_unlock_irq(&usbhid->lock);
 hid_set_idle(dev, intf->cur_altsetting->desc.bInterfaceNumber, 0, 0);

 hid_restart_io(hid);

 return 0;
}
