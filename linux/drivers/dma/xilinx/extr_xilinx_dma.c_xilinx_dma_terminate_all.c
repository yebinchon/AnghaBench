
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xilinx_dma_chan {int cyclic; int (* stop_transfer ) (struct xilinx_dma_chan*) ;int err; int idle; scalar_t__ has_sg; TYPE_2__* xdev; int dev; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dma_config; } ;
struct TYPE_3__ {scalar_t__ dmatype; } ;


 scalar_t__ XDMA_TYPE_CDMA ;
 int XILINX_CDMA_CR_SGMODE ;
 int XILINX_DMA_CR_CYCLIC_BD_EN_MASK ;
 int XILINX_DMA_REG_DMACR ;
 int XILINX_DMA_REG_DMASR ;
 int dev_err (int ,char*,struct xilinx_dma_chan*,int ) ;
 int dma_ctrl_clr (struct xilinx_dma_chan*,int ,int ) ;
 int dma_ctrl_read (struct xilinx_dma_chan*,int ) ;
 int dma_ctrl_write (struct xilinx_dma_chan*,int ,int ) ;
 int stub1 (struct xilinx_dma_chan*) ;
 struct xilinx_dma_chan* to_xilinx_chan (struct dma_chan*) ;
 int xilinx_dma_chan_reset (struct xilinx_dma_chan*) ;
 int xilinx_dma_free_descriptors (struct xilinx_dma_chan*) ;

__attribute__((used)) static int xilinx_dma_terminate_all(struct dma_chan *dchan)
{
 struct xilinx_dma_chan *chan = to_xilinx_chan(dchan);
 u32 reg;
 int err;

 if (chan->cyclic)
  xilinx_dma_chan_reset(chan);

 err = chan->stop_transfer(chan);
 if (err) {
  dev_err(chan->dev, "Cannot stop channel %p: %x\n",
   chan, dma_ctrl_read(chan, XILINX_DMA_REG_DMASR));
  chan->err = 1;
 }


 xilinx_dma_free_descriptors(chan);
 chan->idle = 1;

 if (chan->cyclic) {
  reg = dma_ctrl_read(chan, XILINX_DMA_REG_DMACR);
  reg &= ~XILINX_DMA_CR_CYCLIC_BD_EN_MASK;
  dma_ctrl_write(chan, XILINX_DMA_REG_DMACR, reg);
  chan->cyclic = 0;
 }

 if ((chan->xdev->dma_config->dmatype == XDMA_TYPE_CDMA) && chan->has_sg)
  dma_ctrl_clr(chan, XILINX_DMA_REG_DMACR,
        XILINX_CDMA_CR_SGMODE);

 return 0;
}
