
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct xor_cb {TYPE_1__* ops; } ;
struct ppc440spe_adma_desc_slot {struct xor_cb* hw_desc; } ;
struct TYPE_2__ {int h; } ;



__attribute__((used)) static void ppc440spe_rxor_set_region(struct ppc440spe_adma_desc_slot *desc,
 u8 xor_arg_no, u32 mask)
{
 struct xor_cb *xcb = desc->hw_desc;

 xcb->ops[xor_arg_no].h |= mask;
}
