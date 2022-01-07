
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_dma_chan {scalar_t__ dir; } ;
struct pch_dma {int dummy; } ;
struct dma_chan {int chan_id; int device; } ;


 int CTL0 ;
 int CTL3 ;
 int DMA_CTL0_BITS_PER_CH ;
 int DMA_CTL0_DIR_SHIFT_BITS ;
 int DMA_CTL0_MODE_MASK_BITS ;
 int DMA_MASK_CTL0_MODE ;
 int DMA_MASK_CTL2_MODE ;
 scalar_t__ DMA_MEM_TO_DEV ;
 int chan2dev (struct dma_chan*) ;
 int dev_dbg (int ,char*,int,int) ;
 int dma_readl (struct pch_dma*,int ) ;
 int dma_writel (struct pch_dma*,int ,int) ;
 struct pch_dma* to_pd (int ) ;
 struct pch_dma_chan* to_pd_chan (struct dma_chan*) ;

__attribute__((used)) static void pdc_set_dir(struct dma_chan *chan)
{
 struct pch_dma_chan *pd_chan = to_pd_chan(chan);
 struct pch_dma *pd = to_pd(chan->device);
 u32 val;
 u32 mask_mode;
 u32 mask_ctl;

 if (chan->chan_id < 8) {
  val = dma_readl(pd, CTL0);

  mask_mode = DMA_CTL0_MODE_MASK_BITS <<
     (DMA_CTL0_BITS_PER_CH * chan->chan_id);
  mask_ctl = DMA_MASK_CTL0_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
           (DMA_CTL0_BITS_PER_CH * chan->chan_id));
  val &= mask_mode;
  if (pd_chan->dir == DMA_MEM_TO_DEV)
   val |= 0x1 << (DMA_CTL0_BITS_PER_CH * chan->chan_id +
           DMA_CTL0_DIR_SHIFT_BITS);
  else
   val &= ~(0x1 << (DMA_CTL0_BITS_PER_CH * chan->chan_id +
      DMA_CTL0_DIR_SHIFT_BITS));

  val |= mask_ctl;
  dma_writel(pd, CTL0, val);
 } else {
  int ch = chan->chan_id - 8;
  val = dma_readl(pd, CTL3);

  mask_mode = DMA_CTL0_MODE_MASK_BITS <<
      (DMA_CTL0_BITS_PER_CH * ch);
  mask_ctl = DMA_MASK_CTL2_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
       (DMA_CTL0_BITS_PER_CH * ch));
  val &= mask_mode;
  if (pd_chan->dir == DMA_MEM_TO_DEV)
   val |= 0x1 << (DMA_CTL0_BITS_PER_CH * ch +
           DMA_CTL0_DIR_SHIFT_BITS);
  else
   val &= ~(0x1 << (DMA_CTL0_BITS_PER_CH * ch +
      DMA_CTL0_DIR_SHIFT_BITS));
  val |= mask_ctl;
  dma_writel(pd, CTL3, val);
 }

 dev_dbg(chan2dev(chan), "pdc_set_dir: chan %d -> %x\n",
  chan->chan_id, val);
}
