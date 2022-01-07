
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {int status; scalar_t__ reg_base; } ;
struct dma_chan {int dummy; } ;


 int DMA_IN_PROGRESS ;
 scalar_t__ TDCR ;
 int TDCR_CHANEN ;
 int readl (scalar_t__) ;
 struct mmp_tdma_chan* to_mmp_tdma_chan (struct dma_chan*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mmp_tdma_resume_chan(struct dma_chan *chan)
{
 struct mmp_tdma_chan *tdmac = to_mmp_tdma_chan(chan);

 writel(readl(tdmac->reg_base + TDCR) | TDCR_CHANEN,
     tdmac->reg_base + TDCR);
 tdmac->status = DMA_IN_PROGRESS;

 return 0;
}
