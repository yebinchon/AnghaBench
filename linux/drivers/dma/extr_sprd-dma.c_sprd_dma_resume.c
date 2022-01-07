
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct sprd_dma_chn {TYPE_1__ vc; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_dma_pause_resume (struct sprd_dma_chn*,int) ;
 struct sprd_dma_chn* to_sprd_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int sprd_dma_resume(struct dma_chan *chan)
{
 struct sprd_dma_chn *schan = to_sprd_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&schan->vc.lock, flags);
 sprd_dma_pause_resume(schan, 0);
 spin_unlock_irqrestore(&schan->vc.lock, flags);

 return 0;
}
