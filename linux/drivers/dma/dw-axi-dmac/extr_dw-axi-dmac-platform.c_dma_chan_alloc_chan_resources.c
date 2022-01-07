
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct axi_dma_chan {TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 scalar_t__ axi_chan_is_hw_enable (struct axi_dma_chan*) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 int chan2dev (struct axi_dma_chan*) ;
 int dchan2dev (struct dma_chan*) ;
 struct axi_dma_chan* dchan_to_axi_dma_chan (struct dma_chan*) ;
 int dev_err (int ,char*,int ) ;
 int dev_vdbg (int ,char*,int ) ;
 int pm_runtime_get (int ) ;

__attribute__((used)) static int dma_chan_alloc_chan_resources(struct dma_chan *dchan)
{
 struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);


 if (axi_chan_is_hw_enable(chan)) {
  dev_err(chan2dev(chan), "%s is non-idle!\n",
   axi_chan_name(chan));
  return -EBUSY;
 }

 dev_vdbg(dchan2dev(dchan), "%s: allocating\n", axi_chan_name(chan));

 pm_runtime_get(chan->chip->dev);

 return 0;
}
