
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yealink_dev {int irq_dma; int irq_data; int udev; int ctl_dma; int ctl_data; struct yealink_dev* ctl_req; int urb_ctl; int urb_irq; scalar_t__ idev; } ;


 int USB_PKT_LEN ;
 int input_free_device (scalar_t__) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct yealink_dev*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static int usb_cleanup(struct yealink_dev *yld, int err)
{
 if (yld == ((void*)0))
  return err;

        if (yld->idev) {
  if (err)
   input_free_device(yld->idev);
  else
   input_unregister_device(yld->idev);
 }

 usb_free_urb(yld->urb_irq);
 usb_free_urb(yld->urb_ctl);

 kfree(yld->ctl_req);
 usb_free_coherent(yld->udev, USB_PKT_LEN, yld->ctl_data, yld->ctl_dma);
 usb_free_coherent(yld->udev, USB_PKT_LEN, yld->irq_data, yld->irq_dma);

 kfree(yld);
 return err;
}
