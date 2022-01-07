
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_kbd {int led; int dev; int irq; } ;
struct usb_interface {int dummy; } ;


 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_kbd*) ;
 struct usb_kbd* usb_get_intfdata (struct usb_interface*) ;
 int usb_kbd_free_mem (int ,struct usb_kbd*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_kbd_disconnect(struct usb_interface *intf)
{
 struct usb_kbd *kbd = usb_get_intfdata (intf);

 usb_set_intfdata(intf, ((void*)0));
 if (kbd) {
  usb_kill_urb(kbd->irq);
  input_unregister_device(kbd->dev);
  usb_kill_urb(kbd->led);
  usb_kbd_free_mem(interface_to_usbdev(intf), kbd);
  kfree(kbd);
 }
}
