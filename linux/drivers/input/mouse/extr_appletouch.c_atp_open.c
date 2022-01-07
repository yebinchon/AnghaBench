
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct atp {int open; int urb; } ;


 int EIO ;
 int GFP_KERNEL ;
 struct atp* input_get_drvdata (struct input_dev*) ;
 scalar_t__ usb_submit_urb (int ,int ) ;

__attribute__((used)) static int atp_open(struct input_dev *input)
{
 struct atp *dev = input_get_drvdata(input);

 if (usb_submit_urb(dev->urb, GFP_KERNEL))
  return -EIO;

 dev->open = 1;
 return 0;
}
