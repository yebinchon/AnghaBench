
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device; } ;
struct dw_dma_chan {TYPE_1__ chan; } ;
struct dw_dma {int (* block2bytes ) (struct dw_dma_chan*,int,int) ;} ;


 int CTL_HI ;
 int CTL_LO ;
 int channel_readl (struct dw_dma_chan*,int ) ;
 int stub1 (struct dw_dma_chan*,int,int) ;
 struct dw_dma* to_dw_dma (int ) ;

__attribute__((used)) static inline u32 dwc_get_sent(struct dw_dma_chan *dwc)
{
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);
 u32 ctlhi = channel_readl(dwc, CTL_HI);
 u32 ctllo = channel_readl(dwc, CTL_LO);

 return dw->block2bytes(dwc, ctlhi, ctllo >> 4 & 7);
}
