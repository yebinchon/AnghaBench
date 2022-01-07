
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct usb_dmac_chan {TYPE_2__ vc; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_3__ {int dev; } ;


 int pm_runtime_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usb_dmac_chan* to_usb_dmac_chan (struct dma_chan*) ;
 int usb_dmac_chan_halt (struct usb_dmac_chan*) ;
 int usb_dmac_desc_free (struct usb_dmac_chan*) ;
 int vchan_free_chan_resources (TYPE_2__*) ;

__attribute__((used)) static void usb_dmac_free_chan_resources(struct dma_chan *chan)
{
 struct usb_dmac_chan *uchan = to_usb_dmac_chan(chan);
 unsigned long flags;


 spin_lock_irqsave(&uchan->vc.lock, flags);
 usb_dmac_chan_halt(uchan);
 spin_unlock_irqrestore(&uchan->vc.lock, flags);

 usb_dmac_desc_free(uchan);
 vchan_free_chan_resources(&uchan->vc);

 pm_runtime_put(chan->device->dev);
}
