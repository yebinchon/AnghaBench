
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct pegasus {int data_dma; int data; int data_len; int irq; int dev; } ;


 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct pegasus*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct pegasus* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void pegasus_disconnect(struct usb_interface *intf)
{
 struct pegasus *pegasus = usb_get_intfdata(intf);

 input_unregister_device(pegasus->dev);

 usb_free_urb(pegasus->irq);
 usb_free_coherent(interface_to_usbdev(intf),
     pegasus->data_len, pegasus->data,
     pegasus->data_dma);

 kfree(pegasus);
 usb_set_intfdata(intf, ((void*)0));
}
