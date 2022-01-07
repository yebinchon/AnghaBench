
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int task; } ;
struct tegra_adma_chan {int sreq_dir; scalar_t__ sreq_index; int irq; TYPE_1__ vc; } ;
struct dma_chan {int dummy; } ;


 int DMA_TRANS_NONE ;
 int free_irq (int ,struct tegra_adma_chan*) ;
 int pm_runtime_put (int ) ;
 int tasklet_kill (int *) ;
 int tdc2dev (struct tegra_adma_chan*) ;
 int tegra_adma_terminate_all (struct dma_chan*) ;
 struct tegra_adma_chan* to_tegra_adma_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (TYPE_1__*) ;

__attribute__((used)) static void tegra_adma_free_chan_resources(struct dma_chan *dc)
{
 struct tegra_adma_chan *tdc = to_tegra_adma_chan(dc);

 tegra_adma_terminate_all(dc);
 vchan_free_chan_resources(&tdc->vc);
 tasklet_kill(&tdc->vc.task);
 free_irq(tdc->irq, tdc);
 pm_runtime_put(tdc2dev(tdc));

 tdc->sreq_index = 0;
 tdc->sreq_dir = DMA_TRANS_NONE;
}
