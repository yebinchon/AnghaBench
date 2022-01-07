
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct atp {TYPE_2__* urb; int data; TYPE_1__* info; int udev; int input; } ;
struct TYPE_5__ {int transfer_dma; } ;
struct TYPE_4__ {int datalen; } ;


 int dev_info (int *,char*) ;
 int input_unregister_device (int ) ;
 int kfree (struct atp*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (TYPE_2__*) ;
 struct atp* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (TYPE_2__*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void atp_disconnect(struct usb_interface *iface)
{
 struct atp *dev = usb_get_intfdata(iface);

 usb_set_intfdata(iface, ((void*)0));
 if (dev) {
  usb_kill_urb(dev->urb);
  input_unregister_device(dev->input);
  usb_free_coherent(dev->udev, dev->info->datalen,
      dev->data, dev->urb->transfer_dma);
  usb_free_urb(dev->urb);
  kfree(dev);
 }
 dev_info(&iface->dev, "input: appletouch disconnected\n");
}
