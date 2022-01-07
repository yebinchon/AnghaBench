
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ppc440spe_adma_desc_slot {int src_cnt; int rxor_cursor; } ;
typedef scalar_t__ dma_addr_t ;


 int ppc440spe_adma_dma2rxor_prep_src (struct ppc440spe_adma_desc_slot*,int *,int,int ,int ) ;

__attribute__((used)) static void ppc440spe_adma_init_dma2rxor_slot(
  struct ppc440spe_adma_desc_slot *desc,
  dma_addr_t *src, int src_cnt)
{
 int i;


 for (i = 0; i < src_cnt; i++) {
  ppc440spe_adma_dma2rxor_prep_src(desc, &desc->rxor_cursor, i,
       desc->src_cnt, (u32)src[i]);
 }
}
