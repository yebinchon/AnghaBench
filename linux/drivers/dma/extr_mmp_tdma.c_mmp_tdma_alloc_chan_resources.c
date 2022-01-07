
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_submit; } ;
struct mmp_tdma_chan {scalar_t__ irq; int dev; TYPE_1__ desc; } ;
struct dma_chan {int dummy; } ;


 int devm_request_irq (int ,scalar_t__,int ,int ,char*,struct mmp_tdma_chan*) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,struct dma_chan*) ;
 int mmp_tdma_chan_handler ;
 int mmp_tdma_tx_submit ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (struct dma_chan*) ;

__attribute__((used)) static int mmp_tdma_alloc_chan_resources(struct dma_chan *chan)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);
 int ret;

 dma_async_tx_descriptor_init(&tdmac->desc, chan);
 tdmac->desc.tx_submit = mmp_tdma_tx_submit;

 if (tdmac->irq) {
  ret = devm_request_irq(tdmac->dev, tdmac->irq,
   mmp_tdma_chan_handler, 0, "tdma", tdmac);
  if (ret)
   return ret;
 }
 return 1;
}
