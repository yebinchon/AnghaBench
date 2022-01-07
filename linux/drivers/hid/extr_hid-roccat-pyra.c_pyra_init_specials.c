
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct pyra_roccat_report {int dummy; } ;
struct pyra_device {int chrdev_minor; int roccat_claimed; } ;
struct TYPE_6__ {int parent; } ;
struct hid_device {TYPE_3__ dev; } ;
struct TYPE_4__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ USB_INTERFACE_PROTOCOL_MOUSE ;
 int hid_err (struct hid_device*,char*) ;
 int hid_set_drvdata (struct hid_device*,struct pyra_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct pyra_device*) ;
 struct pyra_device* kzalloc (int,int ) ;
 int pyra_class ;
 int pyra_init_pyra_device_struct (struct usb_device*,struct pyra_device*) ;
 int roccat_connect (int ,struct hid_device*,int) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int pyra_init_specials(struct hid_device *hdev)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 struct pyra_device *pyra;
 int retval;

 if (intf->cur_altsetting->desc.bInterfaceProtocol
   == USB_INTERFACE_PROTOCOL_MOUSE) {

  pyra = kzalloc(sizeof(*pyra), GFP_KERNEL);
  if (!pyra) {
   hid_err(hdev, "can't alloc device descriptor\n");
   return -ENOMEM;
  }
  hid_set_drvdata(hdev, pyra);

  retval = pyra_init_pyra_device_struct(usb_dev, pyra);
  if (retval) {
   hid_err(hdev, "couldn't init struct pyra_device\n");
   goto exit_free;
  }

  retval = roccat_connect(pyra_class, hdev,
    sizeof(struct pyra_roccat_report));
  if (retval < 0) {
   hid_err(hdev, "couldn't init char dev\n");
  } else {
   pyra->chrdev_minor = retval;
   pyra->roccat_claimed = 1;
  }
 } else {
  hid_set_drvdata(hdev, ((void*)0));
 }

 return 0;
exit_free:
 kfree(pyra);
 return retval;
}
