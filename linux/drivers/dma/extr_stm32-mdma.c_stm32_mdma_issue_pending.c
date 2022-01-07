
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct stm32_mdma_chan {TYPE_1__ vchan; int busy; int desc; } ;
struct dma_chan {int dummy; } ;


 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_dbg (int ,char*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_mdma_start_transfer (struct stm32_mdma_chan*) ;
 struct stm32_mdma_chan* to_stm32_mdma_chan (struct dma_chan*) ;
 int vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void stm32_mdma_issue_pending(struct dma_chan *c)
{
 struct stm32_mdma_chan *chan = to_stm32_mdma_chan(c);
 unsigned long flags;

 spin_lock_irqsave(&chan->vchan.lock, flags);

 if (!vchan_issue_pending(&chan->vchan))
  goto end;

 dev_dbg(chan2dev(chan), "vchan %pK: issued\n", &chan->vchan);

 if (!chan->desc && !chan->busy)
  stm32_mdma_start_transfer(chan);

end:
 spin_unlock_irqrestore(&chan->vchan.lock, flags);
}
