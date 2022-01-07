
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chan; } ;
struct ppc440spe_adma_desc_slot {int dst_cnt; struct ppc440spe_adma_desc_slot* group_head; TYPE_1__ async_tx; } ;
struct ppc440spe_adma_chan {TYPE_2__* device; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int id; } ;


 int BUG_ON (int) ;



 int ppc440spe_desc_set_dest_addr (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int ,int ,int) ;
 struct ppc440spe_adma_desc_slot* ppc440spe_get_group_entry (struct ppc440spe_adma_desc_slot*,int) ;
 struct ppc440spe_adma_chan* to_ppc440spe_adma_chan (int ) ;

__attribute__((used)) static void ppc440spe_adma_set_dest(struct ppc440spe_adma_desc_slot *sw_desc,
  dma_addr_t addr, int index)
{
 struct ppc440spe_adma_chan *chan;

 BUG_ON(index >= sw_desc->dst_cnt);

 chan = to_ppc440spe_adma_chan(sw_desc->async_tx.chan);

 switch (chan->device->id) {
 case 130:
 case 129:



  ppc440spe_desc_set_dest_addr(sw_desc->group_head,
   chan, 0, addr, index);
  break;
 case 128:
  sw_desc = ppc440spe_get_group_entry(sw_desc, index);
  ppc440spe_desc_set_dest_addr(sw_desc,
   chan, 0, addr, index);
  break;
 }
}
