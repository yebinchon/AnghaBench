
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct xor_cb {TYPE_1__* ops; } ;
struct ppc440spe_adma_desc_slot {struct xor_cb* hw_desc; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int l; int h; } ;


 int DMA_CUED_XOR_BASE ;

__attribute__((used)) static void ppc440spe_rxor_set_src(struct ppc440spe_adma_desc_slot *desc,
 u8 xor_arg_no, dma_addr_t addr)
{
 struct xor_cb *xcb = desc->hw_desc;

 xcb->ops[xor_arg_no].h |= DMA_CUED_XOR_BASE;
 xcb->ops[xor_arg_no].l = addr;
}
