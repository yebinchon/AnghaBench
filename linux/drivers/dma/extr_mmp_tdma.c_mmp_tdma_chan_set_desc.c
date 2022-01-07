
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {scalar_t__ reg_base; } ;
typedef int dma_addr_t ;


 scalar_t__ TDCR ;
 int TDCR_FETCHND ;
 scalar_t__ TDNDPR ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mmp_tdma_chan_set_desc(struct mmp_tdma_chan *tdmac, dma_addr_t phys)
{
 writel(phys, tdmac->reg_base + TDNDPR);
 writel(readl(tdmac->reg_base + TDCR) | TDCR_FETCHND,
     tdmac->reg_base + TDCR);
}
