
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xor_cb {int dummy; } ;
struct ppc440spe_adma_desc_slot {int dst_cnt; scalar_t__ src_cnt; int * hw_next; int hw_desc; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void ppc440spe_desc_init_null_xor(struct ppc440spe_adma_desc_slot *desc)
{
 memset(desc->hw_desc, 0, sizeof(struct xor_cb));
 desc->hw_next = ((void*)0);
 desc->src_cnt = 0;
 desc->dst_cnt = 1;
}
