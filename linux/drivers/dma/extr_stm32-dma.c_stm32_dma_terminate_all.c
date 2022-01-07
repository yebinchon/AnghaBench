
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct stm32_dma_chan {TYPE_1__ vchan; int * desc; scalar_t__ busy; } ;
struct dma_chan {int dummy; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_dma_stop (struct stm32_dma_chan*) ;
 struct stm32_dma_chan* to_stm32_dma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_1__*,int *) ;
 int vchan_get_all_descriptors (TYPE_1__*,int *) ;

__attribute__((used)) static int stm32_dma_terminate_all(struct dma_chan *c)
{
 struct stm32_dma_chan *chan = to_stm32_dma_chan(c);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&chan->vchan.lock, flags);

 if (chan->busy) {
  stm32_dma_stop(chan);
  chan->desc = ((void*)0);
 }

 vchan_get_all_descriptors(&chan->vchan, &head);
 spin_unlock_irqrestore(&chan->vchan.lock, flags);
 vchan_dma_desc_free_list(&chan->vchan, &head);

 return 0;
}
