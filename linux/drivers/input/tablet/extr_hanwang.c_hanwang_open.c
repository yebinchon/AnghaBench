
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct hanwang {TYPE_1__* irq; int usbdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct hanwang* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int hanwang_open(struct input_dev *dev)
{
 struct hanwang *hanwang = input_get_drvdata(dev);

 hanwang->irq->dev = hanwang->usbdev;
 if (usb_submit_urb(hanwang->irq, GFP_KERNEL))
  return -EIO;

 return 0;
}
