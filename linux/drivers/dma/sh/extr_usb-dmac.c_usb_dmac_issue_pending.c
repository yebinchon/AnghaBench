
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; int desc; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct usb_dmac_chan* to_usb_dmac_chan (struct dma_chan*) ;
 int usb_dmac_chan_start_desc (struct usb_dmac_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void usb_dmac_issue_pending(struct dma_chan *chan)
{
 struct usb_dmac_chan *uchan = to_usb_dmac_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&uchan->vc.lock, flags);
 if (vchan_issue_pending(&uchan->vc) && !uchan->desc)
  usb_dmac_chan_start_desc(uchan);
 spin_unlock_irqrestore(&uchan->vc.lock, flags);
}
