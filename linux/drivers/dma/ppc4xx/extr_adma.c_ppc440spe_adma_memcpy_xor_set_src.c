
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chan; } ;
struct ppc440spe_adma_desc_slot {struct ppc440spe_adma_desc_slot* group_head; TYPE_1__ async_tx; } ;
struct ppc440spe_adma_chan {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ likely (struct ppc440spe_adma_desc_slot*) ;
 int ppc440spe_desc_set_src_addr (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int,int ,int ) ;
 struct ppc440spe_adma_chan* to_ppc440spe_adma_chan (int ) ;

__attribute__((used)) static void ppc440spe_adma_memcpy_xor_set_src(
  struct ppc440spe_adma_desc_slot *sw_desc,
  dma_addr_t addr, int index)
{
 struct ppc440spe_adma_chan *chan;

 chan = to_ppc440spe_adma_chan(sw_desc->async_tx.chan);
 sw_desc = sw_desc->group_head;

 if (likely(sw_desc))
  ppc440spe_desc_set_src_addr(sw_desc, chan, index, 0, addr);
}
