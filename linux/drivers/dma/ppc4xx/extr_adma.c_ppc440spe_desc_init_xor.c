
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xor_cb {int cbc; } ;
struct ppc440spe_adma_desc_slot {int src_cnt; int dst_cnt; int * hw_next; struct xor_cb* hw_desc; } ;


 unsigned long DMA_PREP_INTERRUPT ;
 int XOR_CBCR_CBCE_BIT ;
 int XOR_CBCR_TGT_BIT ;
 int memset (struct xor_cb*,int ,int) ;

__attribute__((used)) static void ppc440spe_desc_init_xor(struct ppc440spe_adma_desc_slot *desc,
      int src_cnt, unsigned long flags)
{
 struct xor_cb *hw_desc = desc->hw_desc;

 memset(desc->hw_desc, 0, sizeof(struct xor_cb));
 desc->hw_next = ((void*)0);
 desc->src_cnt = src_cnt;
 desc->dst_cnt = 1;

 hw_desc->cbc = XOR_CBCR_TGT_BIT | src_cnt;
 if (flags & DMA_PREP_INTERRUPT)

  hw_desc->cbc |= XOR_CBCR_CBCE_BIT;
}
