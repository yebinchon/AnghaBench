
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct owl_dma_txd {int lli_list; } ;
struct TYPE_2__ {int ctrla; int next_lli; } ;
struct owl_dma_lli {TYPE_1__ hw; int phys; int node; } ;


 int OWL_DMA_MODE_LME ;
 int list_add_tail (int *,int *) ;
 int llc_hw_ctrla (int ,int ) ;

__attribute__((used)) static struct owl_dma_lli *owl_dma_add_lli(struct owl_dma_txd *txd,
        struct owl_dma_lli *prev,
        struct owl_dma_lli *next,
        bool is_cyclic)
{
 if (!is_cyclic)
  list_add_tail(&next->node, &txd->lli_list);

 if (prev) {
  prev->hw.next_lli = next->phys;
  prev->hw.ctrla |= llc_hw_ctrla(OWL_DMA_MODE_LME, 0);
 }

 return next;
}
