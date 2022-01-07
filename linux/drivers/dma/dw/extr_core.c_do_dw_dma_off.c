
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int chancnt; } ;
struct dw_dma {TYPE_2__* chan; TYPE_1__ dma; int all_chan_mask; } ;
struct TYPE_6__ {int ERROR; int DST_TRAN; int SRC_TRAN; int BLOCK; int XFER; } ;
struct TYPE_5__ {int flags; } ;


 int CFG ;
 int DW_CFG_DMA_EN ;
 int DW_DMA_IS_INITIALIZED ;
 TYPE_3__ MASK ;
 int channel_clear_bit (struct dw_dma*,int ,int ) ;
 int clear_bit (int ,int *) ;
 int cpu_relax () ;
 int dma_readl (struct dw_dma*,int ) ;
 int dma_writel (struct dw_dma*,int ,int ) ;

void do_dw_dma_off(struct dw_dma *dw)
{
 unsigned int i;

 dma_writel(dw, CFG, 0);

 channel_clear_bit(dw, MASK.XFER, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.BLOCK, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.SRC_TRAN, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.DST_TRAN, dw->all_chan_mask);
 channel_clear_bit(dw, MASK.ERROR, dw->all_chan_mask);

 while (dma_readl(dw, CFG) & DW_CFG_DMA_EN)
  cpu_relax();

 for (i = 0; i < dw->dma.chancnt; i++)
  clear_bit(DW_DMA_IS_INITIALIZED, &dw->chan[i].flags);
}
