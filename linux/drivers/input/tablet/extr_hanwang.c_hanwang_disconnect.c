
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct hanwang {int data_dma; int data; TYPE_1__* features; int irq; int dev; } ;
struct TYPE_2__ {int pkg_len; } ;


 int input_unregister_device (int ) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct hanwang*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;
 struct hanwang* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void hanwang_disconnect(struct usb_interface *intf)
{
 struct hanwang *hanwang = usb_get_intfdata(intf);

 input_unregister_device(hanwang->dev);
 usb_free_urb(hanwang->irq);
 usb_free_coherent(interface_to_usbdev(intf),
   hanwang->features->pkg_len, hanwang->data,
   hanwang->data_dma);
 kfree(hanwang);
 usb_set_intfdata(intf, ((void*)0));
}
