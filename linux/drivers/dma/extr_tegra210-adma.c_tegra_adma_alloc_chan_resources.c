
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct tegra_adma_chan {TYPE_1__ vc; int irq; } ;
struct dma_chan {int dummy; } ;


 int dev_err (int ,char*,int ) ;
 int dma_chan_name (struct dma_chan*) ;
 int dma_cookie_init (int *) ;
 int free_irq (int ,struct tegra_adma_chan*) ;
 int pm_runtime_get_sync (int ) ;
 int request_irq (int ,int ,int ,int ,struct tegra_adma_chan*) ;
 int tdc2dev (struct tegra_adma_chan*) ;
 int tegra_adma_isr ;
 struct tegra_adma_chan* to_tegra_adma_chan (struct dma_chan*) ;

__attribute__((used)) static int tegra_adma_alloc_chan_resources(struct dma_chan *dc)
{
 struct tegra_adma_chan *tdc = to_tegra_adma_chan(dc);
 int ret;

 ret = request_irq(tdc->irq, tegra_adma_isr, 0, dma_chan_name(dc), tdc);
 if (ret) {
  dev_err(tdc2dev(tdc), "failed to get interrupt for %s\n",
   dma_chan_name(dc));
  return ret;
 }

 ret = pm_runtime_get_sync(tdc2dev(tdc));
 if (ret < 0) {
  free_irq(tdc->irq, tdc);
  return ret;
 }

 dma_cookie_init(&tdc->vc.chan);

 return 0;
}
