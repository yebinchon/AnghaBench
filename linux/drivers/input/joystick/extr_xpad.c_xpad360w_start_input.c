
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {int irq_in; } ;


 int EIO ;
 int GFP_KERNEL ;
 int usb_kill_urb (int ) ;
 int usb_submit_urb (int ,int ) ;
 int xpad_inquiry_pad_presence (struct usb_xpad*) ;

__attribute__((used)) static int xpad360w_start_input(struct usb_xpad *xpad)
{
 int error;

 error = usb_submit_urb(xpad->irq_in, GFP_KERNEL);
 if (error)
  return -EIO;
 error = xpad_inquiry_pad_presence(xpad);
 if (error) {
  usb_kill_urb(xpad->irq_in);
  return error;
 }

 return 0;
}
