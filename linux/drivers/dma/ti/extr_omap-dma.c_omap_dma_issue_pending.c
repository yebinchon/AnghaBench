
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct omap_chan {TYPE_1__ vc; int desc; } ;
struct dma_chan {int dummy; } ;


 int omap_dma_start_desc (struct omap_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void omap_dma_issue_pending(struct dma_chan *chan)
{
 struct omap_chan *c = to_omap_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&c->vc.lock, flags);
 if (vchan_issue_pending(&c->vc) && !c->desc)
  omap_dma_start_desc(c);
 spin_unlock_irqrestore(&c->vc.lock, flags);
}
