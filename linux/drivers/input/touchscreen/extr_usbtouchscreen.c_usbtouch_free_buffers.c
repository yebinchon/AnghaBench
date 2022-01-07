
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtouch_usb {int buffer; int data_dma; int data; int data_size; } ;
struct usb_device {int dummy; } ;


 int kfree (int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static void usbtouch_free_buffers(struct usb_device *udev,
      struct usbtouch_usb *usbtouch)
{
 usb_free_coherent(udev, usbtouch->data_size,
     usbtouch->data, usbtouch->data_dma);
 kfree(usbtouch->buffer);
}
