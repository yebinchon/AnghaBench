
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int chan; } ;


 int CTL_HI ;
 int CTL_LO ;
 int DAR ;
 int LLP ;
 int SAR ;
 int chan2dev (int *) ;
 int channel_readl (struct dw_dma_chan*,int ) ;
 int dev_err (int ,char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void dwc_dump_chan_regs(struct dw_dma_chan *dwc)
{
 dev_err(chan2dev(&dwc->chan),
  "  SAR: 0x%x DAR: 0x%x LLP: 0x%x CTL: 0x%x:%08x\n",
  channel_readl(dwc, SAR),
  channel_readl(dwc, DAR),
  channel_readl(dwc, LLP),
  channel_readl(dwc, CTL_HI),
  channel_readl(dwc, CTL_LO));
}
