
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int hs_polarity; int src_id; int dst_id; } ;
struct TYPE_5__ {int device; } ;
struct dw_dma_chan {TYPE_3__ dws; int priority; TYPE_2__ chan; } ;
struct dw_dma {TYPE_1__* pdata; } ;
struct TYPE_4__ {int protctl; } ;


 int CFG_HI ;
 int CFG_LO ;
 int DWC_CFGH_DST_PER (int ) ;
 int DWC_CFGH_FIFO_MODE ;
 int DWC_CFGH_PROTCTL (int ) ;
 int DWC_CFGH_SRC_PER (int ) ;
 int DWC_CFGL_CH_PRIOR (int ) ;
 int DWC_CFGL_HS_DST_POL ;
 int DWC_CFGL_HS_SRC_POL ;
 int channel_writel (struct dw_dma_chan*,int ,int) ;
 struct dw_dma* to_dw_dma (int ) ;

__attribute__((used)) static void dw_dma_initialize_chan(struct dw_dma_chan *dwc)
{
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);
 u32 cfghi = DWC_CFGH_FIFO_MODE;
 u32 cfglo = DWC_CFGL_CH_PRIOR(dwc->priority);
 bool hs_polarity = dwc->dws.hs_polarity;

 cfghi |= DWC_CFGH_DST_PER(dwc->dws.dst_id);
 cfghi |= DWC_CFGH_SRC_PER(dwc->dws.src_id);
 cfghi |= DWC_CFGH_PROTCTL(dw->pdata->protctl);


 cfglo |= hs_polarity ? DWC_CFGL_HS_DST_POL | DWC_CFGL_HS_SRC_POL : 0;

 channel_writel(dwc, CFG_LO, cfglo);
 channel_writel(dwc, CFG_HI, cfghi);
}
