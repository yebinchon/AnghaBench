
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_dmac {int dev; } ;


 int EIO ;
 int USB_DMAOR ;
 int USB_DMAOR_AE ;
 int USB_DMAOR_DME ;
 int dev_warn (int ,char*) ;
 int usb_dmac_read (struct usb_dmac*,int ) ;
 int usb_dmac_write (struct usb_dmac*,int ,int) ;

__attribute__((used)) static int usb_dmac_init(struct usb_dmac *dmac)
{
 u16 dmaor;


 usb_dmac_write(dmac, USB_DMAOR, USB_DMAOR_DME);

 dmaor = usb_dmac_read(dmac, USB_DMAOR);
 if ((dmaor & (USB_DMAOR_AE | USB_DMAOR_DME)) != USB_DMAOR_DME) {
  dev_warn(dmac->dev, "DMAOR initialization failed.\n");
  return -EIO;
 }

 return 0;
}
