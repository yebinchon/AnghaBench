
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct dw_dma_chan {int flags; TYPE_1__ chan; } ;
struct dw_dma {int (* suspend_chan ) (struct dw_dma_chan*,int) ;} ;


 int CFG_LO ;
 int DWC_CFGL_FIFO_EMPTY ;
 int DW_DMA_IS_PAUSED ;
 int channel_readl (struct dw_dma_chan*,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (struct dw_dma_chan*,int) ;
 struct dw_dma* to_dw_dma (int ) ;
 int udelay (int) ;

__attribute__((used)) static void dwc_chan_pause(struct dw_dma_chan *dwc, bool drain)
{
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);
 unsigned int count = 20;

 dw->suspend_chan(dwc, drain);

 while (!(channel_readl(dwc, CFG_LO) & DWC_CFGL_FIFO_EMPTY) && count--)
  udelay(2);

 set_bit(DW_DMA_IS_PAUSED, &dwc->flags);
}
