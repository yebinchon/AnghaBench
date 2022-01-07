
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stm32_mdma_hwdesc {int ctcr; } ;
struct stm32_mdma_device {int dummy; } ;
struct TYPE_6__ {int lock; } ;
struct stm32_mdma_chan {size_t curr_hwdesc; TYPE_3__ vchan; int id; TYPE_2__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_5__ {int ccr; TYPE_1__* node; } ;
struct TYPE_4__ {struct stm32_mdma_hwdesc* hwdesc; } ;


 scalar_t__ STM32_MDMA_CCR (int ) ;
 scalar_t__ STM32_MDMA_CCR_EN ;
 scalar_t__ STM32_MDMA_CCR_SWRQ ;
 scalar_t__ STM32_MDMA_CIFCR (int ) ;
 int STM32_MDMA_CISR (int ) ;
 int STM32_MDMA_CTCR_SWRM ;
 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_dbg (int ,char*,TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_mdma_dump_reg (struct stm32_mdma_chan*) ;
 struct stm32_mdma_device* stm32_mdma_get_dev (struct stm32_mdma_chan*) ;
 scalar_t__ stm32_mdma_read (struct stm32_mdma_device*,int ) ;
 int stm32_mdma_set_bits (struct stm32_mdma_device*,scalar_t__,scalar_t__) ;
 int stm32_mdma_write (struct stm32_mdma_device*,scalar_t__,int ) ;
 struct stm32_mdma_chan* to_stm32_mdma_chan (struct dma_chan*) ;

__attribute__((used)) static int stm32_mdma_resume(struct dma_chan *c)
{
 struct stm32_mdma_chan *chan = to_stm32_mdma_chan(c);
 struct stm32_mdma_device *dmadev = stm32_mdma_get_dev(chan);
 struct stm32_mdma_hwdesc *hwdesc;
 unsigned long flags;
 u32 status, reg;

 hwdesc = chan->desc->node[chan->curr_hwdesc].hwdesc;

 spin_lock_irqsave(&chan->vchan.lock, flags);


 stm32_mdma_write(dmadev, STM32_MDMA_CCR(chan->id), chan->desc->ccr);


 status = stm32_mdma_read(dmadev, STM32_MDMA_CISR(chan->id));
 if (status)
  stm32_mdma_set_bits(dmadev, STM32_MDMA_CIFCR(chan->id), status);

 stm32_mdma_dump_reg(chan);


 reg = STM32_MDMA_CCR(chan->id);
 stm32_mdma_set_bits(dmadev, reg, STM32_MDMA_CCR_EN);


 if (hwdesc->ctcr & STM32_MDMA_CTCR_SWRM)
  stm32_mdma_set_bits(dmadev, reg, STM32_MDMA_CCR_SWRQ);

 spin_unlock_irqrestore(&chan->vchan.lock, flags);

 dev_dbg(chan2dev(chan), "vchan %pK: resume\n", &chan->vchan);

 return 0;
}
