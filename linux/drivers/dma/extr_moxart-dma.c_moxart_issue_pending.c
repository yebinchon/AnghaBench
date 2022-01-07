
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct moxart_chan {TYPE_1__ vc; int desc; } ;
struct dma_chan {int dummy; } ;


 int moxart_dma_start_desc (struct dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct moxart_chan* to_moxart_dma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void moxart_issue_pending(struct dma_chan *chan)
{
 struct moxart_chan *ch = to_moxart_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&ch->vc.lock, flags);
 if (vchan_issue_pending(&ch->vc) && !ch->desc)
  moxart_dma_start_desc(chan);
 spin_unlock_irqrestore(&ch->vc.lock, flags);
}
