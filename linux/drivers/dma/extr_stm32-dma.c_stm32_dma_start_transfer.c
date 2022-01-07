
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct virt_dma_desc {int dummy; } ;
struct stm32_dma_chan_reg {int dma_scr; int dma_sndtr; int dma_sm1ar; int dma_sfcr; int dma_sm0ar; int dma_spar; } ;
struct stm32_dma_sg_req {struct stm32_dma_chan_reg chan_reg; } ;
struct stm32_dma_device {int dummy; } ;
struct stm32_dma_chan {size_t next_sg; int busy; int vchan; int id; TYPE_1__* desc; } ;
struct TYPE_2__ {size_t num_sgs; scalar_t__ cyclic; struct stm32_dma_sg_req* sg_req; } ;


 int STM32_DMA_SCR (int ) ;
 int STM32_DMA_SCR_EN ;
 int STM32_DMA_SFCR (int ) ;
 int STM32_DMA_SM0AR (int ) ;
 int STM32_DMA_SM1AR (int ) ;
 int STM32_DMA_SNDTR (int ) ;
 int STM32_DMA_SPAR (int ) ;
 int chan2dev (struct stm32_dma_chan*) ;
 int dev_dbg (int ,char*,int *) ;
 int stm32_dma_configure_next_sg (struct stm32_dma_chan*) ;
 int stm32_dma_disable_chan (struct stm32_dma_chan*) ;
 int stm32_dma_dump_reg (struct stm32_dma_chan*) ;
 struct stm32_dma_device* stm32_dma_get_dev (struct stm32_dma_chan*) ;
 int stm32_dma_irq_clear (struct stm32_dma_chan*,scalar_t__) ;
 scalar_t__ stm32_dma_irq_status (struct stm32_dma_chan*) ;
 int stm32_dma_write (struct stm32_dma_device*,int ,int ) ;
 TYPE_1__* to_stm32_dma_desc (struct virt_dma_desc*) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void stm32_dma_start_transfer(struct stm32_dma_chan *chan)
{
 struct stm32_dma_device *dmadev = stm32_dma_get_dev(chan);
 struct virt_dma_desc *vdesc;
 struct stm32_dma_sg_req *sg_req;
 struct stm32_dma_chan_reg *reg;
 u32 status;
 int ret;

 ret = stm32_dma_disable_chan(chan);
 if (ret < 0)
  return;

 if (!chan->desc) {
  vdesc = vchan_next_desc(&chan->vchan);
  if (!vdesc)
   return;

  chan->desc = to_stm32_dma_desc(vdesc);
  chan->next_sg = 0;
 }

 if (chan->next_sg == chan->desc->num_sgs)
  chan->next_sg = 0;

 sg_req = &chan->desc->sg_req[chan->next_sg];
 reg = &sg_req->chan_reg;

 stm32_dma_write(dmadev, STM32_DMA_SCR(chan->id), reg->dma_scr);
 stm32_dma_write(dmadev, STM32_DMA_SPAR(chan->id), reg->dma_spar);
 stm32_dma_write(dmadev, STM32_DMA_SM0AR(chan->id), reg->dma_sm0ar);
 stm32_dma_write(dmadev, STM32_DMA_SFCR(chan->id), reg->dma_sfcr);
 stm32_dma_write(dmadev, STM32_DMA_SM1AR(chan->id), reg->dma_sm1ar);
 stm32_dma_write(dmadev, STM32_DMA_SNDTR(chan->id), reg->dma_sndtr);

 chan->next_sg++;


 status = stm32_dma_irq_status(chan);
 if (status)
  stm32_dma_irq_clear(chan, status);

 if (chan->desc->cyclic)
  stm32_dma_configure_next_sg(chan);

 stm32_dma_dump_reg(chan);


 reg->dma_scr |= STM32_DMA_SCR_EN;
 stm32_dma_write(dmadev, STM32_DMA_SCR(chan->id), reg->dma_scr);

 chan->busy = 1;

 dev_dbg(chan2dev(chan), "vchan %pK: started\n", &chan->vchan);
}
