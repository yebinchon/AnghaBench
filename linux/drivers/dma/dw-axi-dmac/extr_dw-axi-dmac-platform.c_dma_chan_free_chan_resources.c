
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct axi_dma_chan {TYPE_1__* chip; int descs_allocated; int vc; } ;
struct TYPE_2__ {int dev; } ;


 int DWAXIDMAC_IRQ_ALL ;
 int atomic_read (int *) ;
 int axi_chan_disable (struct axi_dma_chan*) ;
 int axi_chan_irq_disable (struct axi_dma_chan*,int ) ;
 scalar_t__ axi_chan_is_hw_enable (struct axi_dma_chan*) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 int dchan2dev (struct dma_chan*) ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int dev_err (int ,char*,int ) ;
 int dev_vdbg (int ,char*,int ,int ) ;
 int pm_runtime_put (int ) ;
 int vchan_free_chan_resources (int *) ;

__attribute__((used)) static void dma_chan_free_chan_resources(struct dma_chan *dchan)
{
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);


 if (axi_chan_is_hw_enable(chan))
  dev_err(dchan2dev(dchan), "%s is non-idle!\n",
   axi_chan_name(chan));

 axi_chan_disable(chan);
 axi_chan_irq_disable(chan, DWAXIDMAC_IRQ_ALL);

 vchan_free_chan_resources(&chan->vc);

 dev_vdbg(dchan2dev(dchan),
   "%s: free resources, descriptor still allocated: %u\n",
   axi_chan_name(chan), atomic_read(&chan->descs_allocated));

 pm_runtime_put(chan->chip->dev);
}
