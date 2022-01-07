
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dma_channel {int lock; scalar_t__ cyclic; int busy; int pending_sg_req; } ;
struct dma_chan {int dummy; } ;


 int TEGRA_APBDMA_BURST_COMPLETE_TIME ;
 int dev_err (int ,char*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tdc2dev (struct tegra_dma_channel*) ;
 int tdc_configure_next_head_desc (struct tegra_dma_channel*) ;
 int tdc_start_head_req (struct tegra_dma_channel*) ;
 struct tegra_dma_channel* to_tegra_dma_chan (struct dma_chan*) ;
 int udelay (int ) ;

__attribute__((used)) static void tegra_dma_issue_pending(struct dma_chan *dc)
{
 struct tegra_dma_channel *tdc = to_tegra_dma_chan(dc);
 unsigned long flags;

 spin_lock_irqsave(&tdc->lock, flags);
 if (list_empty(&tdc->pending_sg_req)) {
  dev_err(tdc2dev(tdc), "No DMA request\n");
  goto end;
 }
 if (!tdc->busy) {
  tdc_start_head_req(tdc);


  if (tdc->cyclic) {




   udelay(TEGRA_APBDMA_BURST_COMPLETE_TIME);
   tdc_configure_next_head_desc(tdc);
  }
 }
end:
 spin_unlock_irqrestore(&tdc->lock, flags);
}
