
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_adma_desc_slot {int dummy; } ;
struct ppc440spe_adma_chan {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_CDB_SG_DST1 ;
 int DMA_CUED_MULT1_OFF ;
 int DMA_CUED_XOR_BASE ;
 int DMA_CUED_XOR_HB ;
 int ppc440spe_desc_set_dest_addr (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int ,int ,int ) ;
 int ppc440spe_desc_set_src_addr (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int ,int ,int ) ;
 int ppc440spe_desc_set_src_mult (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int ,int ,int) ;

__attribute__((used)) static void ppc440spe_adma_pq_zero_op(struct ppc440spe_adma_desc_slot *iter,
  struct ppc440spe_adma_chan *chan, dma_addr_t addr)
{




 ppc440spe_desc_set_dest_addr(iter, chan, DMA_CUED_XOR_BASE, addr, 0);


 ppc440spe_desc_set_src_addr(iter, chan, 0, DMA_CUED_XOR_HB, addr);


 ppc440spe_desc_set_src_mult(iter, chan, DMA_CUED_MULT1_OFF,
        DMA_CDB_SG_DST1, 1);
}
