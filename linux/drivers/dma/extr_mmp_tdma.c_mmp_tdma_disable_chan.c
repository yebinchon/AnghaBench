
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmp_tdma_chan {int status; scalar_t__ reg_base; } ;
struct dma_chan {int dummy; } ;


 int DMA_COMPLETE ;
 scalar_t__ TDCR ;
 int TDCR_ABR ;
 int TDCR_CHANEN ;
 int readl (scalar_t__) ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (struct dma_chan*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mmp_tdma_disable_chan(struct dma_chan *chan)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);
 u32 tdcr;

 tdcr = readl(tdmac->reg_base + TDCR);
 tdcr |= TDCR_ABR;
 tdcr &= ~TDCR_CHANEN;
 writel(tdcr, tdmac->reg_base + TDCR);

 tdmac->status = DMA_COMPLETE;

 return 0;
}
