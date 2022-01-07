
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int * xport_ops; } ;
struct iforce_usb {void* out; void* irq; TYPE_3__ iforce; int data_out; int data_in; struct usb_interface* intf; struct usb_device* usbdev; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int BUS_USB ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int iforce_init_device (int *,int ,TYPE_3__*) ;
 int iforce_usb_irq ;
 int iforce_usb_out ;
 int iforce_usb_xport_ops ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct iforce_usb*) ;
 struct iforce_usb* kzalloc (int,int ) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 int usb_endpoint_is_int_out (struct usb_endpoint_descriptor*) ;
 int usb_fill_int_urb (void*,struct usb_device*,int ,int ,int,int ,struct iforce_usb*,int ) ;
 int usb_free_urb (void*) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct iforce_usb*) ;
 int usb_sndintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int iforce_usb_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct usb_host_interface *interface;
 struct usb_endpoint_descriptor *epirq, *epout;
 struct iforce_usb *iforce_usb;
 int err = -ENOMEM;

 interface = intf->cur_altsetting;

 if (interface->desc.bNumEndpoints < 2)
  return -ENODEV;

 epirq = &interface->endpoint[0].desc;
 if (!usb_endpoint_is_int_in(epirq))
  return -ENODEV;

 epout = &interface->endpoint[1].desc;
 if (!usb_endpoint_is_int_out(epout))
  return -ENODEV;

 iforce_usb = kzalloc(sizeof(*iforce_usb), GFP_KERNEL);
 if (!iforce_usb)
  goto fail;

 iforce_usb->irq = usb_alloc_urb(0, GFP_KERNEL);
 if (!iforce_usb->irq)
  goto fail;

 iforce_usb->out = usb_alloc_urb(0, GFP_KERNEL);
 if (!iforce_usb->out)
  goto fail;

 iforce_usb->iforce.xport_ops = &iforce_usb_xport_ops;

 iforce_usb->usbdev = dev;
 iforce_usb->intf = intf;

 usb_fill_int_urb(iforce_usb->irq, dev,
    usb_rcvintpipe(dev, epirq->bEndpointAddress),
    iforce_usb->data_in, sizeof(iforce_usb->data_in),
    iforce_usb_irq, iforce_usb, epirq->bInterval);

 usb_fill_int_urb(iforce_usb->out, dev,
    usb_sndintpipe(dev, epout->bEndpointAddress),
    iforce_usb->data_out, sizeof(iforce_usb->data_out),
    iforce_usb_out, iforce_usb, epout->bInterval);

 err = iforce_init_device(&intf->dev, BUS_USB, &iforce_usb->iforce);
 if (err)
  goto fail;

 usb_set_intfdata(intf, iforce_usb);
 return 0;

fail:
 if (iforce_usb) {
  usb_free_urb(iforce_usb->irq);
  usb_free_urb(iforce_usb->out);
  kfree(iforce_usb);
 }

 return err;
}
