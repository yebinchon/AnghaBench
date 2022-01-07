
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct sdma_channel {TYPE_1__ vc; int desc; } ;
struct dma_chan {int dummy; } ;


 int sdma_start_desc (struct sdma_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sdma_channel* to_sdma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void sdma_issue_pending(struct dma_chan *chan)
{
 struct sdma_channel *sdmac = to_sdma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&sdmac->vc.lock, flags);
 if (vchan_issue_pending(&sdmac->vc) && !sdmac->desc)
  sdma_start_desc(sdmac);
 spin_unlock_irqrestore(&sdmac->vc.lock, flags);
}
