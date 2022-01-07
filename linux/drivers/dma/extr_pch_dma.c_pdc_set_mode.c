
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pch_dma {int dummy; } ;
struct dma_chan {int chan_id; int device; } ;


 int CTL0 ;
 int CTL3 ;
 int DMA_CTL0_BITS_PER_CH ;
 int DMA_CTL0_DIR_SHIFT_BITS ;
 int DMA_CTL0_MODE_MASK_BITS ;
 int DMA_MASK_CTL0_MODE ;
 int DMA_MASK_CTL2_MODE ;
 int chan2dev (struct dma_chan*) ;
 int dev_dbg (int ,char*,int,int) ;
 int dma_readl (struct pch_dma*,int ) ;
 int dma_writel (struct pch_dma*,int ,int) ;
 struct pch_dma* to_pd (int ) ;

__attribute__((used)) static void pdc_set_mode(struct dma_chan *chan, u32 mode)
{
 struct pch_dma *pd = to_pd(chan->device);
 u32 val;
 u32 mask_ctl;
 u32 mask_dir;

 if (chan->chan_id < 8) {
  mask_ctl = DMA_MASK_CTL0_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
      (DMA_CTL0_BITS_PER_CH * chan->chan_id));
  mask_dir = 1 << (DMA_CTL0_BITS_PER_CH * chan->chan_id + DMA_CTL0_DIR_SHIFT_BITS);

  val = dma_readl(pd, CTL0);
  val &= mask_dir;
  val |= mode << (DMA_CTL0_BITS_PER_CH * chan->chan_id);
  val |= mask_ctl;
  dma_writel(pd, CTL0, val);
 } else {
  int ch = chan->chan_id - 8;
  mask_ctl = DMA_MASK_CTL2_MODE & ~(DMA_CTL0_MODE_MASK_BITS <<
       (DMA_CTL0_BITS_PER_CH * ch));
  mask_dir = 1 << (DMA_CTL0_BITS_PER_CH * ch + DMA_CTL0_DIR_SHIFT_BITS);

  val = dma_readl(pd, CTL3);
  val &= mask_dir;
  val |= mode << (DMA_CTL0_BITS_PER_CH * ch);
  val |= mask_ctl;
  dma_writel(pd, CTL3, val);
 }

 dev_dbg(chan2dev(chan), "pdc_set_mode: chan %d -> %x\n",
  chan->chan_id, val);
}
