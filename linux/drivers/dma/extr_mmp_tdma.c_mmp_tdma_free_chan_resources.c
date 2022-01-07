
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {scalar_t__ irq; int dev; } ;
struct dma_chan {int dummy; } ;


 int devm_free_irq (int ,scalar_t__,struct mmp_tdma_chan*) ;
 int mmp_tdma_free_descriptor (struct mmp_tdma_chan*) ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (struct dma_chan*) ;

__attribute__((used)) static void mmp_tdma_free_chan_resources(struct dma_chan *chan)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);

 if (tdmac->irq)
  devm_free_irq(tdmac->dev, tdmac->irq, tdmac);
 mmp_tdma_free_descriptor(tdmac);
 return;
}
