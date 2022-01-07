
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct ryos_report_special {int dummy; } ;
struct roccat_common2_device {int chrdev_minor; int roccat_claimed; } ;
struct TYPE_6__ {int parent; } ;
struct hid_device {TYPE_3__ dev; } ;
struct TYPE_4__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ RYOS_USB_INTERFACE_PROTOCOL ;
 int hid_err (struct hid_device*,char*) ;
 int hid_set_drvdata (struct hid_device*,struct roccat_common2_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct roccat_common2_device*) ;
 struct roccat_common2_device* kzalloc (int,int ) ;
 int roccat_common2_device_init_struct (struct usb_device*,struct roccat_common2_device*) ;
 int roccat_connect (int ,struct hid_device*,int) ;
 int ryos_class ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int ryos_init_specials(struct hid_device *hdev)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 struct roccat_common2_device *ryos;
 int retval;

 if (intf->cur_altsetting->desc.bInterfaceProtocol
   != RYOS_USB_INTERFACE_PROTOCOL) {
  hid_set_drvdata(hdev, ((void*)0));
  return 0;
 }

 ryos = kzalloc(sizeof(*ryos), GFP_KERNEL);
 if (!ryos) {
  hid_err(hdev, "can't alloc device descriptor\n");
  return -ENOMEM;
 }
 hid_set_drvdata(hdev, ryos);

 retval = roccat_common2_device_init_struct(usb_dev, ryos);
 if (retval) {
  hid_err(hdev, "couldn't init Ryos device\n");
  goto exit_free;
 }

 retval = roccat_connect(ryos_class, hdev,
   sizeof(struct ryos_report_special));
 if (retval < 0) {
  hid_err(hdev, "couldn't init char dev\n");
 } else {
  ryos->chrdev_minor = retval;
  ryos->roccat_claimed = 1;
 }

 return 0;
exit_free:
 kfree(ryos);
 return retval;
}
