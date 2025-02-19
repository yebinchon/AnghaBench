
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct koneplus_roccat_report {int dummy; } ;
struct koneplus_device {int chrdev_minor; int roccat_claimed; } ;
struct TYPE_6__ {int parent; } ;
struct hid_device {TYPE_3__ dev; } ;
struct TYPE_4__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ USB_INTERFACE_PROTOCOL_MOUSE ;
 int hid_err (struct hid_device*,char*) ;
 int hid_set_drvdata (struct hid_device*,struct koneplus_device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct koneplus_device*) ;
 int koneplus_class ;
 int koneplus_init_koneplus_device_struct (struct usb_device*,struct koneplus_device*) ;
 struct koneplus_device* kzalloc (int,int ) ;
 int roccat_connect (int ,struct hid_device*,int) ;
 struct usb_interface* to_usb_interface (int ) ;

__attribute__((used)) static int koneplus_init_specials(struct hid_device *hdev)
{
 struct usb_interface *intf = to_usb_interface(hdev->dev.parent);
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 struct koneplus_device *koneplus;
 int retval;

 if (intf->cur_altsetting->desc.bInterfaceProtocol
   == USB_INTERFACE_PROTOCOL_MOUSE) {

  koneplus = kzalloc(sizeof(*koneplus), GFP_KERNEL);
  if (!koneplus) {
   hid_err(hdev, "can't alloc device descriptor\n");
   return -ENOMEM;
  }
  hid_set_drvdata(hdev, koneplus);

  retval = koneplus_init_koneplus_device_struct(usb_dev, koneplus);
  if (retval) {
   hid_err(hdev, "couldn't init struct koneplus_device\n");
   goto exit_free;
  }

  retval = roccat_connect(koneplus_class, hdev,
    sizeof(struct koneplus_roccat_report));
  if (retval < 0) {
   hid_err(hdev, "couldn't init char dev\n");
  } else {
   koneplus->chrdev_minor = retval;
   koneplus->roccat_claimed = 1;
  }
 } else {
  hid_set_drvdata(hdev, ((void*)0));
 }

 return 0;
exit_free:
 kfree(koneplus);
 return retval;
}
