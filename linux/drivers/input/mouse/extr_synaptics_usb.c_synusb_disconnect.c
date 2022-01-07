
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct synusb {int flags; TYPE_1__* urb; int data; int input; } ;
struct TYPE_2__ {int transfer_dma; } ;


 int SYNUSB_IO_ALWAYS ;
 int SYNUSB_RECV_SIZE ;
 int input_unregister_device (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct synusb*) ;
 int synusb_close (int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;
 int usb_free_urb (TYPE_1__*) ;
 struct synusb* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void synusb_disconnect(struct usb_interface *intf)
{
 struct synusb *synusb = usb_get_intfdata(intf);
 struct usb_device *udev = interface_to_usbdev(intf);

 if (synusb->flags & SYNUSB_IO_ALWAYS)
  synusb_close(synusb->input);

 input_unregister_device(synusb->input);

 usb_free_coherent(udev, SYNUSB_RECV_SIZE, synusb->data,
     synusb->urb->transfer_dma);
 usb_free_urb(synusb->urb);
 kfree(synusb);

 usb_set_intfdata(intf, ((void*)0));
}
