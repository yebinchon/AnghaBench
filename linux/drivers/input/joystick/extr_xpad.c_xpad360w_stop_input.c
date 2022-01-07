
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {int work; int irq_in; } ;


 int flush_work (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void xpad360w_stop_input(struct usb_xpad *xpad)
{
 usb_kill_urb(xpad->irq_in);


 flush_work(&xpad->work);
}
