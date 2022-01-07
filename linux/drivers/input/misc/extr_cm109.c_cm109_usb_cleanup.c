
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm109_dev {int urb_ctl; int urb_irq; int irq_dma; scalar_t__ irq_data; int udev; int ctl_dma; scalar_t__ ctl_data; struct cm109_dev* ctl_req; } ;


 int USB_PKT_LEN ;
 int kfree (struct cm109_dev*) ;
 int usb_free_coherent (int ,int ,scalar_t__,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void cm109_usb_cleanup(struct cm109_dev *dev)
{
 kfree(dev->ctl_req);
 if (dev->ctl_data)
  usb_free_coherent(dev->udev, USB_PKT_LEN,
      dev->ctl_data, dev->ctl_dma);
 if (dev->irq_data)
  usb_free_coherent(dev->udev, USB_PKT_LEN,
      dev->irq_data, dev->irq_dma);

 usb_free_urb(dev->urb_irq);
 usb_free_urb(dev->urb_ctl);
 kfree(dev);
}
