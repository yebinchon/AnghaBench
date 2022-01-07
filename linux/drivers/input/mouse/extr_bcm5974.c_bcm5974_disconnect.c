
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_3__ {int bt_datalen; int tp_datalen; } ;
struct bcm5974 {TYPE_2__* bt_urb; TYPE_2__* tp_urb; int bt_data; TYPE_1__ cfg; int udev; int tp_data; int input; } ;
struct TYPE_4__ {int transfer_dma; } ;


 int input_unregister_device (int ) ;
 int kfree (struct bcm5974*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (TYPE_2__*) ;
 struct bcm5974* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void bcm5974_disconnect(struct usb_interface *iface)
{
 struct bcm5974 *dev = usb_get_intfdata(iface);

 usb_set_intfdata(iface, ((void*)0));

 input_unregister_device(dev->input);
 usb_free_coherent(dev->udev, dev->cfg.tp_datalen,
     dev->tp_data, dev->tp_urb->transfer_dma);
 if (dev->bt_urb)
  usb_free_coherent(dev->udev, dev->cfg.bt_datalen,
      dev->bt_data, dev->bt_urb->transfer_dma);
 usb_free_urb(dev->tp_urb);
 usb_free_urb(dev->bt_urb);
 kfree(dev);
}
