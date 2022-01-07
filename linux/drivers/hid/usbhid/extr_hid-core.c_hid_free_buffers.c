
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhid_device {int ctrlbuf_dma; int ctrlbuf; int bufsize; int cr; int outbuf_dma; int outbuf; int inbuf_dma; int inbuf; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;


 int kfree (int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static void hid_free_buffers(struct usb_device *dev, struct hid_device *hid)
{
 struct usbhid_device *usbhid = hid->driver_data;

 usb_free_coherent(dev, usbhid->bufsize, usbhid->inbuf, usbhid->inbuf_dma);
 usb_free_coherent(dev, usbhid->bufsize, usbhid->outbuf, usbhid->outbuf_dma);
 kfree(usbhid->cr);
 usb_free_coherent(dev, usbhid->bufsize, usbhid->ctrlbuf, usbhid->ctrlbuf_dma);
}
