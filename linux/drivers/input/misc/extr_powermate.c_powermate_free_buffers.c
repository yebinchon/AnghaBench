
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct powermate_device {int configcr; int data_dma; int data; } ;


 int POWERMATE_PAYLOAD_SIZE_MAX ;
 int kfree (int ) ;
 int usb_free_coherent (struct usb_device*,int ,int ,int ) ;

__attribute__((used)) static void powermate_free_buffers(struct usb_device *udev, struct powermate_device *pm)
{
 usb_free_coherent(udev, POWERMATE_PAYLOAD_SIZE_MAX,
     pm->data, pm->data_dma);
 kfree(pm->configcr);
}
