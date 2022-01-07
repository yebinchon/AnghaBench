
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_adma_desc_slot {int src_cnt; int dst_cnt; int flags; int * hw_next; struct dma_cdb* hw_desc; } ;
struct dma_cdb {int opc; } ;


 int DMA_CDB_OPC_MV_SG1_SG2 ;
 unsigned long DMA_PREP_INTERRUPT ;
 int PPC440SPE_DESC_INT ;
 int clear_bit (int ,int *) ;
 int memset (struct dma_cdb*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void ppc440spe_desc_init_memcpy(struct ppc440spe_adma_desc_slot *desc,
     unsigned long flags)
{
 struct dma_cdb *hw_desc = desc->hw_desc;

 memset(desc->hw_desc, 0, sizeof(struct dma_cdb));
 desc->hw_next = ((void*)0);
 desc->src_cnt = 1;
 desc->dst_cnt = 1;

 if (flags & DMA_PREP_INTERRUPT)
  set_bit(PPC440SPE_DESC_INT, &desc->flags);
 else
  clear_bit(PPC440SPE_DESC_INT, &desc->flags);

 hw_desc->opc = DMA_CDB_OPC_MV_SG1_SG2;
}
