
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun6i_pchan {scalar_t__ base; int idx; } ;
struct TYPE_2__ {int dev; } ;
struct sun6i_dma_dev {TYPE_1__ slave; } ;
typedef int phys_addr_t ;


 scalar_t__ DMA_CHAN_CUR_CFG ;
 scalar_t__ DMA_CHAN_CUR_CNT ;
 scalar_t__ DMA_CHAN_CUR_DST ;
 scalar_t__ DMA_CHAN_CUR_PARA ;
 scalar_t__ DMA_CHAN_CUR_SRC ;
 scalar_t__ DMA_CHAN_ENABLE ;
 scalar_t__ DMA_CHAN_LLI_ADDR ;
 scalar_t__ DMA_CHAN_PAUSE ;
 int dev_dbg (int ,char*,int ,int *,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ) ;
 int readl (scalar_t__) ;
 int virt_to_phys (scalar_t__) ;

__attribute__((used)) static inline void sun6i_dma_dump_chan_regs(struct sun6i_dma_dev *sdev,
         struct sun6i_pchan *pchan)
{
 phys_addr_t reg = virt_to_phys(pchan->base);

 dev_dbg(sdev->slave.dev, "Chan %d reg: %pa\n"
  "\t___en(%04x): \t0x%08x\n"
  "\tpause(%04x): \t0x%08x\n"
  "\tstart(%04x): \t0x%08x\n"
  "\t__cfg(%04x): \t0x%08x\n"
  "\t__src(%04x): \t0x%08x\n"
  "\t__dst(%04x): \t0x%08x\n"
  "\tcount(%04x): \t0x%08x\n"
  "\t_para(%04x): \t0x%08x\n\n",
  pchan->idx, &reg,
  DMA_CHAN_ENABLE,
  readl(pchan->base + DMA_CHAN_ENABLE),
  DMA_CHAN_PAUSE,
  readl(pchan->base + DMA_CHAN_PAUSE),
  DMA_CHAN_LLI_ADDR,
  readl(pchan->base + DMA_CHAN_LLI_ADDR),
  DMA_CHAN_CUR_CFG,
  readl(pchan->base + DMA_CHAN_CUR_CFG),
  DMA_CHAN_CUR_SRC,
  readl(pchan->base + DMA_CHAN_CUR_SRC),
  DMA_CHAN_CUR_DST,
  readl(pchan->base + DMA_CHAN_CUR_DST),
  DMA_CHAN_CUR_CNT,
  readl(pchan->base + DMA_CHAN_CUR_CNT),
  DMA_CHAN_CUR_PARA,
  readl(pchan->base + DMA_CHAN_CUR_PARA));
}
