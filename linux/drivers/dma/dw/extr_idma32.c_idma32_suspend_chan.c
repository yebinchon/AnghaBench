
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_dma_chan {int dummy; } ;


 int CFG_LO ;
 int DWC_CFGL_CH_SUSP ;
 int IDMA32C_CFGL_CH_DRAIN ;
 int channel_readl (struct dw_dma_chan*,int ) ;
 int channel_writel (struct dw_dma_chan*,int ,int) ;

__attribute__((used)) static void idma32_suspend_chan(struct dw_dma_chan *dwc, bool drain)
{
 u32 cfglo = channel_readl(dwc, CFG_LO);

 if (drain)
  cfglo |= IDMA32C_CFGL_CH_DRAIN;

 channel_writel(dwc, CFG_LO, cfglo | DWC_CFGL_CH_SUSP);
}
