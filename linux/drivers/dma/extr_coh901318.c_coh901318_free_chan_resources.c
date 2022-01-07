
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct coh901318_chan {int id; int lock; scalar_t__ allocated; TYPE_1__* base; } ;
struct TYPE_2__ {scalar_t__ virtbase; } ;


 scalar_t__ COH901318_CX_CFG ;
 int COH901318_CX_CFG_SPACING ;
 scalar_t__ COH901318_CX_CTRL ;
 int COH901318_CX_CTRL_SPACING ;
 int coh901318_terminate_all (struct dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct coh901318_chan* to_coh901318_chan (struct dma_chan*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void
coh901318_free_chan_resources(struct dma_chan *chan)
{
 struct coh901318_chan *cohc = to_coh901318_chan(chan);
 int channel = cohc->id;
 unsigned long flags;

 spin_lock_irqsave(&cohc->lock, flags);


 writel(0x00000000U, cohc->base->virtbase + COH901318_CX_CFG +
        COH901318_CX_CFG_SPACING*channel);
 writel(0x00000000U, cohc->base->virtbase + COH901318_CX_CTRL +
        COH901318_CX_CTRL_SPACING*channel);

 cohc->allocated = 0;

 spin_unlock_irqrestore(&cohc->lock, flags);

 coh901318_terminate_all(chan);
}
