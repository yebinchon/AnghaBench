
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct hsu_dma_chan {TYPE_1__ vchan; TYPE_2__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {scalar_t__ status; } ;


 scalar_t__ DMA_IN_PROGRESS ;
 scalar_t__ DMA_PAUSED ;
 int hsu_chan_disable (struct hsu_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hsu_dma_chan* to_hsu_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int hsu_dma_pause(struct dma_chan *chan)
{
 struct hsu_dma_chan *hsuc = to_hsu_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&hsuc->vchan.lock, flags);
 if (hsuc->desc && hsuc->desc->status == DMA_IN_PROGRESS) {
  hsu_chan_disable(hsuc);
  hsuc->desc->status = DMA_PAUSED;
 }
 spin_unlock_irqrestore(&hsuc->vchan.lock, flags);

 return 0;
}
