
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_acecad {int data_dma; int data; int irq; int input; } ;


 int input_unregister_device (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usb_acecad*) ;
 int usb_free_coherent (struct usb_device*,int,int ,int ) ;
 int usb_free_urb (int ) ;
 struct usb_acecad* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_acecad_disconnect(struct usb_interface *intf)
{
 struct usb_acecad *acecad = usb_get_intfdata(intf);
 struct usb_device *udev = interface_to_usbdev(intf);

 usb_set_intfdata(intf, ((void*)0));

 input_unregister_device(acecad->input);
 usb_free_urb(acecad->irq);
 usb_free_coherent(udev, 8, acecad->data, acecad->data_dma);
 kfree(acecad);
}
