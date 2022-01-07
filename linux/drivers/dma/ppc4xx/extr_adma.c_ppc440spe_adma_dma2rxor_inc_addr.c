
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_rxor {scalar_t__ addr_count; int desc_count; } ;
struct ppc440spe_adma_desc_slot {int dummy; } ;


 scalar_t__ XOR_MAX_OPS ;
 int ppc440spe_desc_set_xor_src_cnt (struct ppc440spe_adma_desc_slot*,scalar_t__) ;

__attribute__((used)) static void ppc440spe_adma_dma2rxor_inc_addr(
  struct ppc440spe_adma_desc_slot *desc,
  struct ppc440spe_rxor *cursor, int index, int src_cnt)
{
 cursor->addr_count++;
 if (index == src_cnt - 1) {
  ppc440spe_desc_set_xor_src_cnt(desc, cursor->addr_count);
 } else if (cursor->addr_count == XOR_MAX_OPS) {
  ppc440spe_desc_set_xor_src_cnt(desc, cursor->addr_count);
  cursor->addr_count = 0;
  cursor->desc_count++;
 }
}
