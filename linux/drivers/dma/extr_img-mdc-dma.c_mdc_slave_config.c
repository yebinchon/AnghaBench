
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct dma_slave_config {int dummy; } ;
struct mdc_chan {TYPE_1__ vc; struct dma_slave_config config; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdc_chan* to_mdc_chan (struct dma_chan*) ;

__attribute__((used)) static int mdc_slave_config(struct dma_chan *chan,
       struct dma_slave_config *config)
{
 struct mdc_chan *mchan = to_mdc_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&mchan->vc.lock, flags);
 mchan->config = *config;
 spin_unlock_irqrestore(&mchan->vc.lock, flags);

 return 0;
}
