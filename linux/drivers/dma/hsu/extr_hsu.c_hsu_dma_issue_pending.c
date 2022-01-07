
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct hsu_dma_chan {TYPE_1__ vchan; int desc; } ;
struct dma_chan {int dummy; } ;


 int hsu_dma_start_transfer (struct hsu_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hsu_dma_chan* to_hsu_dma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void hsu_dma_issue_pending(struct dma_chan *chan)
{
 struct hsu_dma_chan *hsuc = to_hsu_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&hsuc->vchan.lock, flags);
 if (vchan_issue_pending(&hsuc->vchan) && !hsuc->desc)
  hsu_dma_start_transfer(hsuc);
 spin_unlock_irqrestore(&hsuc->vchan.lock, flags);
}
