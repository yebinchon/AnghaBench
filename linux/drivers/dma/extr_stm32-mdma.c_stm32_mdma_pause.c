
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct stm32_mdma_chan {TYPE_1__ vchan; } ;
struct dma_chan {int dummy; } ;


 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_dbg (int ,char*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_mdma_disable_chan (struct stm32_mdma_chan*) ;
 struct stm32_mdma_chan* to_stm32_mdma_chan (struct dma_chan*) ;

__attribute__((used)) static int stm32_mdma_pause(struct dma_chan *c)
{
 struct stm32_mdma_chan *chan = to_stm32_mdma_chan(c);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&chan->vchan.lock, flags);
 ret = stm32_mdma_disable_chan(chan);
 spin_unlock_irqrestore(&chan->vchan.lock, flags);

 if (!ret)
  dev_dbg(chan2dev(chan), "vchan %pK: pause\n", &chan->vchan);

 return ret;
}
