
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct aiptek {TYPE_1__* urb; int intf; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct aiptek* input_get_drvdata (struct input_dev*) ;
 int interface_to_usbdev (int ) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int aiptek_open(struct input_dev *inputdev)
{
 struct aiptek *aiptek = input_get_drvdata(inputdev);

 aiptek->urb->dev = interface_to_usbdev(aiptek->intf);
 if (usb_submit_urb(aiptek->urb, GFP_KERNEL) != 0)
  return -EIO;

 return 0;
}
