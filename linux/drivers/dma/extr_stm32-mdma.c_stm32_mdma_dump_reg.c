
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_mdma_device {int dummy; } ;
struct stm32_mdma_chan {int id; } ;


 int STM32_MDMA_CBNDTR (int ) ;
 int STM32_MDMA_CBRUR (int ) ;
 int STM32_MDMA_CCR (int ) ;
 int STM32_MDMA_CDAR (int ) ;
 int STM32_MDMA_CLAR (int ) ;
 int STM32_MDMA_CMAR (int ) ;
 int STM32_MDMA_CMDR (int ) ;
 int STM32_MDMA_CSAR (int ) ;
 int STM32_MDMA_CTBR (int ) ;
 int STM32_MDMA_CTCR (int ) ;
 int chan2dev (struct stm32_mdma_chan*) ;
 int dev_dbg (int ,char*,int ) ;
 struct stm32_mdma_device* stm32_mdma_get_dev (struct stm32_mdma_chan*) ;
 int stm32_mdma_read (struct stm32_mdma_device*,int ) ;

__attribute__((used)) static void stm32_mdma_dump_reg(struct stm32_mdma_chan *chan)
{
 struct stm32_mdma_device *dmadev = stm32_mdma_get_dev(chan);

 dev_dbg(chan2dev(chan), "CCR:     0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CCR(chan->id)));
 dev_dbg(chan2dev(chan), "CTCR:    0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CTCR(chan->id)));
 dev_dbg(chan2dev(chan), "CBNDTR:  0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CBNDTR(chan->id)));
 dev_dbg(chan2dev(chan), "CSAR:    0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CSAR(chan->id)));
 dev_dbg(chan2dev(chan), "CDAR:    0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CDAR(chan->id)));
 dev_dbg(chan2dev(chan), "CBRUR:   0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CBRUR(chan->id)));
 dev_dbg(chan2dev(chan), "CLAR:    0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CLAR(chan->id)));
 dev_dbg(chan2dev(chan), "CTBR:    0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CTBR(chan->id)));
 dev_dbg(chan2dev(chan), "CMAR:    0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CMAR(chan->id)));
 dev_dbg(chan2dev(chan), "CMDR:    0x%08x\n",
  stm32_mdma_read(dmadev, STM32_MDMA_CMDR(chan->id)));
}
