
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct kbtab {TYPE_1__* irq; int intf; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct kbtab* input_get_drvdata (struct input_dev*) ;
 struct usb_device* interface_to_usbdev (int ) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int kbtab_open(struct input_dev *dev)
{
 struct kbtab *kbtab = input_get_drvdata(dev);
 struct usb_device *udev = interface_to_usbdev(kbtab->intf);

 kbtab->irq->dev = udev;
 if (usb_submit_urb(kbtab->irq, GFP_KERNEL))
  return -EIO;

 return 0;
}
