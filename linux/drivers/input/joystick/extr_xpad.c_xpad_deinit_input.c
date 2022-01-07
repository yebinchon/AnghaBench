
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {int input_created; int dev; } ;


 int input_unregister_device (int ) ;
 int xpad_led_disconnect (struct usb_xpad*) ;

__attribute__((used)) static void xpad_deinit_input(struct usb_xpad *xpad)
{
 if (xpad->input_created) {
  xpad->input_created = 0;
  xpad_led_disconnect(xpad);
  input_unregister_device(xpad->dev);
 }
}
