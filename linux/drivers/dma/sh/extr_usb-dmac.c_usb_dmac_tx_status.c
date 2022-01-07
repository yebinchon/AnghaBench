
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usb_dmac_chan* to_usb_dmac_chan (struct dma_chan*) ;
 unsigned int usb_dmac_chan_get_residue (struct usb_dmac_chan*,int ) ;
 unsigned int usb_dmac_chan_get_residue_if_complete (struct usb_dmac_chan*,int ) ;

__attribute__((used)) static enum dma_status usb_dmac_tx_status(struct dma_chan *chan,
       dma_cookie_t cookie,
       struct dma_tx_state *txstate)
{
 struct usb_dmac_chan *uchan = to_usb_dmac_chan(chan);
 enum dma_status status;
 unsigned int residue = 0;
 unsigned long flags;

 status = dma_cookie_status(chan, cookie, txstate);

 if (!txstate)
  return status;

 spin_lock_irqsave(&uchan->vc.lock, flags);
 if (status == DMA_COMPLETE)
  residue = usb_dmac_chan_get_residue_if_complete(uchan, cookie);
 else
  residue = usb_dmac_chan_get_residue(uchan, cookie);
 spin_unlock_irqrestore(&uchan->vc.lock, flags);

 dma_set_residue(txstate, residue);

 return status;
}
