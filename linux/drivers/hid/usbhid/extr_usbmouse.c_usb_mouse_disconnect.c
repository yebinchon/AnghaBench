
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mouse {int data_dma; int data; int irq; int dev; } ;
struct usb_interface {int dummy; } ;


 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_mouse*) ;
 int usb_free_coherent (int ,int,int ,int ) ;
 int usb_free_urb (int ) ;
 struct usb_mouse* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_mouse_disconnect(struct usb_interface *intf)
{
 struct usb_mouse *mouse = usb_get_intfdata (intf);

 usb_set_intfdata(intf, ((void*)0));
 if (mouse) {
  usb_kill_urb(mouse->irq);
  input_unregister_device(mouse->dev);
  usb_free_urb(mouse->irq);
  usb_free_coherent(interface_to_usbdev(intf), 8, mouse->data, mouse->data_dma);
  kfree(mouse);
 }
}
