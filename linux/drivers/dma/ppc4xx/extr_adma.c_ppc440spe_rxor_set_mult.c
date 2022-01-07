
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct xor_cb {TYPE_1__* ops; } ;
struct ppc440spe_adma_desc_slot {struct xor_cb* hw_desc; } ;
struct TYPE_2__ {size_t h; } ;


 size_t DMA_CUED_MULT1_OFF ;

__attribute__((used)) static void ppc440spe_rxor_set_mult(struct ppc440spe_adma_desc_slot *desc,
 u8 xor_arg_no, u8 idx, u8 mult)
{
 struct xor_cb *xcb = desc->hw_desc;

 xcb->ops[xor_arg_no].h |= mult << (DMA_CUED_MULT1_OFF + idx * 8);
}
