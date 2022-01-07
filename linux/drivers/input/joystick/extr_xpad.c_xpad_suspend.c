
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {scalar_t__ xtype; scalar_t__ pad_present; struct input_dev* dev; } ;
struct usb_interface {int dummy; } ;
struct input_dev {int mutex; scalar_t__ users; } ;
typedef int pm_message_t ;


 scalar_t__ XTYPE_XBOX360W ;
 scalar_t__ auto_poweroff ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usb_xpad* usb_get_intfdata (struct usb_interface*) ;
 int xpad360w_poweroff_controller (struct usb_xpad*) ;
 int xpad360w_stop_input (struct usb_xpad*) ;
 int xpad_stop_input (struct usb_xpad*) ;
 int xpad_stop_output (struct usb_xpad*) ;

__attribute__((used)) static int xpad_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usb_xpad *xpad = usb_get_intfdata(intf);
 struct input_dev *input = xpad->dev;

 if (xpad->xtype == XTYPE_XBOX360W) {





  xpad360w_stop_input(xpad);







  if (auto_poweroff && xpad->pad_present)
   xpad360w_poweroff_controller(xpad);
 } else {
  mutex_lock(&input->mutex);
  if (input->users)
   xpad_stop_input(xpad);
  mutex_unlock(&input->mutex);
 }

 xpad_stop_output(xpad);

 return 0;
}
