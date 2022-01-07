
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_dma_pchan {int id; } ;
struct owl_dma {int dummy; } ;


 int OWL_DMA_IDLE_STAT ;
 unsigned int dma_readl (struct owl_dma*,int ) ;

__attribute__((used)) static int owl_dma_pchan_busy(struct owl_dma *od, struct owl_dma_pchan *pchan)
{
 unsigned int val;

 val = dma_readl(od, OWL_DMA_IDLE_STAT);

 return !(val & (1 << pchan->id));
}
