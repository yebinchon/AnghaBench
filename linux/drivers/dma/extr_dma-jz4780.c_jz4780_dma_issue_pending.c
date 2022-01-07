
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct jz4780_dma_chan {TYPE_1__ vchan; int desc; } ;
struct dma_chan {int dummy; } ;


 int jz4780_dma_begin (struct jz4780_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void jz4780_dma_issue_pending(struct dma_chan *chan)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&jzchan->vchan.lock, flags);

 if (vchan_issue_pending(&jzchan->vchan) && !jzchan->desc)
  jz4780_dma_begin(jzchan);

 spin_unlock_irqrestore(&jzchan->vchan.lock, flags);
}
