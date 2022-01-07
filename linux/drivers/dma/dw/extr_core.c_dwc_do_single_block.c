
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int device; } ;
struct dw_dma_chan {TYPE_1__* tx_node_active; int mask; TYPE_2__ chan; } ;
struct dw_dma {int dummy; } ;
struct dw_desc {int dummy; } ;
struct TYPE_3__ {struct TYPE_3__* next; } ;


 int CH_EN ;
 int CTL_HI ;
 int CTL_LO ;
 int DAR ;
 int DWC_CTLL_INT_EN ;
 int SAR ;
 int channel_set_bit (struct dw_dma*,int ,int ) ;
 int channel_writel (struct dw_dma_chan*,int ,int) ;
 int ctlhi ;
 int dar ;
 int lli_read (struct dw_desc*,int) ;
 int sar ;
 struct dw_dma* to_dw_dma (int ) ;

__attribute__((used)) static inline void dwc_do_single_block(struct dw_dma_chan *dwc,
           struct dw_desc *desc)
{
 struct dw_dma *dw = to_dw_dma(dwc->chan.device);
 u32 ctllo;





 ctllo = lli_read(desc, ctllo) | DWC_CTLL_INT_EN;

 channel_writel(dwc, SAR, lli_read(desc, sar));
 channel_writel(dwc, DAR, lli_read(desc, dar));
 channel_writel(dwc, CTL_LO, ctllo);
 channel_writel(dwc, CTL_HI, lli_read(desc, ctlhi));
 channel_set_bit(dw, CH_EN, dwc->mask);


 dwc->tx_node_active = dwc->tx_node_active->next;
}
