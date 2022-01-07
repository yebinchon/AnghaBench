
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at_dma {int dummy; } ;


 int AT_DMA_BTC (int) ;
 int AT_DMA_ERR (int) ;
 int EBCIDR ;
 int EBCIER ;
 int dma_writel (struct at_dma*,int ,int) ;

__attribute__((used)) static void atc_setup_irq(struct at_dma *atdma, int chan_id, int on)
{
 u32 ebci;


 ebci = AT_DMA_BTC(chan_id)
  | AT_DMA_ERR(chan_id);
 if (on)
  dma_writel(atdma, EBCIER, ebci);
 else
  dma_writel(atdma, EBCIDR, ebci);
}
