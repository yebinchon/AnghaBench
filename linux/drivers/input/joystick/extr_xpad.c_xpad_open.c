
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {int dummy; } ;
struct input_dev {int dummy; } ;


 struct usb_xpad* input_get_drvdata (struct input_dev*) ;
 int xpad_start_input (struct usb_xpad*) ;

__attribute__((used)) static int xpad_open(struct input_dev *dev)
{
 struct usb_xpad *xpad = input_get_drvdata(dev);

 return xpad_start_input(xpad);
}
