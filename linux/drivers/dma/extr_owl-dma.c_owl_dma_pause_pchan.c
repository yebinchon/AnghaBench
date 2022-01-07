
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_dma_pchan {int dummy; } ;


 int OWL_DMAX_PAUSE ;
 int pchan_writel (struct owl_dma_pchan*,int,int ) ;

__attribute__((used)) static void owl_dma_pause_pchan(struct owl_dma_pchan *pchan)
{
 pchan_writel(pchan, 1, OWL_DMAX_PAUSE);
}
