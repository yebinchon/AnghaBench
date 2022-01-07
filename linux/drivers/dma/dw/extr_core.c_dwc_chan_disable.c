
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma_chan {int mask; } ;
struct dw_dma {int dummy; } ;


 int CH_EN ;
 int channel_clear_bit (struct dw_dma*,int ,int) ;
 int cpu_relax () ;
 int dma_readl (struct dw_dma*,int ) ;

__attribute__((used)) static inline void dwc_chan_disable(struct dw_dma *dw, struct dw_dma_chan *dwc)
{
 channel_clear_bit(dw, CH_EN, dwc->mask);
 while (dma_readl(dw, CH_EN) & dwc->mask)
  cpu_relax();
}
