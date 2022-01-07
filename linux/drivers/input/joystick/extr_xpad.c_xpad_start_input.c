
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {scalar_t__ xtype; int irq_in; } ;


 int EIO ;
 int GFP_KERNEL ;
 scalar_t__ XTYPE_XBOXONE ;
 int usb_kill_urb (int ) ;
 scalar_t__ usb_submit_urb (int ,int ) ;
 int xpad_start_xbox_one (struct usb_xpad*) ;

__attribute__((used)) static int xpad_start_input(struct usb_xpad *xpad)
{
 int error;

 if (usb_submit_urb(xpad->irq_in, GFP_KERNEL))
  return -EIO;

 if (xpad->xtype == XTYPE_XBOXONE) {
  error = xpad_start_xbox_one(xpad);
  if (error) {
   usb_kill_urb(xpad->irq_in);
   return error;
  }
 }

 return 0;
}
