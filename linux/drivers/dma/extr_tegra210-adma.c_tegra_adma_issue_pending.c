
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct tegra_adma_chan {TYPE_1__ vc; int desc; } ;
struct dma_chan {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_adma_start (struct tegra_adma_chan*) ;
 struct tegra_adma_chan* to_tegra_adma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void tegra_adma_issue_pending(struct dma_chan *dc)
{
 struct tegra_adma_chan *tdc = to_tegra_adma_chan(dc);
 unsigned long flags;

 spin_lock_irqsave(&tdc->vc.lock, flags);

 if (vchan_issue_pending(&tdc->vc)) {
  if (!tdc->desc)
   tegra_adma_start(tdc);
 }

 spin_unlock_irqrestore(&tdc->vc.lock, flags);
}
