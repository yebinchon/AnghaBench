
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_acecad {TYPE_1__* irq; int intf; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct usb_acecad* input_get_drvdata (struct input_dev*) ;
 int interface_to_usbdev (int ) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int usb_acecad_open(struct input_dev *dev)
{
 struct usb_acecad *acecad = input_get_drvdata(dev);

 acecad->irq->dev = interface_to_usbdev(acecad->intf);
 if (usb_submit_urb(acecad->irq, GFP_KERNEL))
  return -EIO;

 return 0;
}
