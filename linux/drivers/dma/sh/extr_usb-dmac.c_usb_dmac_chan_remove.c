
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dmac_chan {int irq; } ;
struct usb_dmac {int dev; } ;


 int devm_free_irq (int ,int ,struct usb_dmac_chan*) ;
 int usb_dmac_chan_halt (struct usb_dmac_chan*) ;

__attribute__((used)) static void usb_dmac_chan_remove(struct usb_dmac *dmac,
     struct usb_dmac_chan *uchan)
{
 usb_dmac_chan_halt(uchan);
 devm_free_irq(dmac->dev, uchan->irq, uchan);
}
