
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct dw_axi_dma {struct axi_dma_chan* chan; TYPE_1__* hdata; } ;
struct axi_dma_chip {int dev; struct dw_axi_dma* dw; } ;
struct axi_dma_chan {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {size_t nr_channels; } ;


 size_t DWAXIDMAC_IRQ_ALL_ERR ;
 size_t DWAXIDMAC_IRQ_DMA_TRF ;
 int IRQ_HANDLED ;
 int axi_chan_block_xfer_complete (struct axi_dma_chan*) ;
 int axi_chan_handle_err (struct axi_dma_chan*,size_t) ;
 int axi_chan_irq_clear (struct axi_dma_chan*,size_t) ;
 size_t axi_chan_irq_read (struct axi_dma_chan*) ;
 int axi_chan_name (struct axi_dma_chan*) ;
 int axi_dma_irq_disable (struct axi_dma_chip*) ;
 int axi_dma_irq_enable (struct axi_dma_chip*) ;
 int dev_vdbg (int ,char*,int ,size_t,size_t) ;

__attribute__((used)) static irqreturn_t dw_axi_dma_interrupt(int irq, void *dev_id)
{
 struct axi_dma_chip *chip = dev_id;
 struct dw_axi_dma *dw = chip->dw;
 struct axi_dma_chan *chan;

 u32 status, i;


 axi_dma_irq_disable(chip);


 for (i = 0; i < dw->hdata->nr_channels; i++) {
  chan = &dw->chan[i];
  status = axi_chan_irq_read(chan);
  axi_chan_irq_clear(chan, status);

  dev_vdbg(chip->dev, "%s %u IRQ status: 0x%08x\n",
   axi_chan_name(chan), i, status);

  if (status & DWAXIDMAC_IRQ_ALL_ERR)
   axi_chan_handle_err(chan, status);
  else if (status & DWAXIDMAC_IRQ_DMA_TRF)
   axi_chan_block_xfer_complete(chan);
 }


 axi_dma_irq_enable(chip);

 return IRQ_HANDLED;
}
