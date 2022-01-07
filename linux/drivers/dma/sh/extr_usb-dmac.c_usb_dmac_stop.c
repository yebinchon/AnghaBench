
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dmac {int dummy; } ;


 int USB_DMAOR ;
 int usb_dmac_write (struct usb_dmac*,int ,int ) ;

__attribute__((used)) static void usb_dmac_stop(struct usb_dmac *dmac)
{
 usb_dmac_write(dmac, USB_DMAOR, 0);
}
