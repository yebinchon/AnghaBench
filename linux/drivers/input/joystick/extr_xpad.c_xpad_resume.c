
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {scalar_t__ xtype; struct input_dev* dev; } ;
struct usb_interface {int dummy; } ;
struct input_dev {int mutex; scalar_t__ users; } ;


 scalar_t__ XTYPE_XBOX360W ;
 scalar_t__ XTYPE_XBOXONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usb_xpad* usb_get_intfdata (struct usb_interface*) ;
 int xpad360w_start_input (struct usb_xpad*) ;
 int xpad_start_input (struct usb_xpad*) ;
 int xpad_start_xbox_one (struct usb_xpad*) ;

__attribute__((used)) static int xpad_resume(struct usb_interface *intf)
{
 struct usb_xpad *xpad = usb_get_intfdata(intf);
 struct input_dev *input = xpad->dev;
 int retval = 0;

 if (xpad->xtype == XTYPE_XBOX360W) {
  retval = xpad360w_start_input(xpad);
 } else {
  mutex_lock(&input->mutex);
  if (input->users) {
   retval = xpad_start_input(xpad);
  } else if (xpad->xtype == XTYPE_XBOXONE) {





   retval = xpad_start_xbox_one(xpad);
  }
  mutex_unlock(&input->mutex);
 }

 return retval;
}
