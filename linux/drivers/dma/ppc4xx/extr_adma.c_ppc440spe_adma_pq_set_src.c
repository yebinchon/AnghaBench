
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chan; } ;
struct ppc440spe_adma_desc_slot {int dst_cnt; int descs_per_op; struct ppc440spe_adma_desc_slot* group_head; int flags; TYPE_1__ async_tx; } ;
struct ppc440spe_adma_chan {TYPE_2__* device; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int id; } ;


 int BUG () ;
 int DMA_CUED_REGION_OFF ;
 int DMA_CUED_XOR_BASE ;
 int DMA_CUED_XOR_HB ;
 int DMA_RXOR12 ;
 int DMA_RXOR123 ;
 int DMA_RXOR124 ;
 int DMA_RXOR125 ;
 int PPC440SPE_DESC_RXOR ;
 int PPC440SPE_DESC_RXOR12 ;
 int PPC440SPE_DESC_RXOR123 ;
 int PPC440SPE_DESC_RXOR124 ;
 int PPC440SPE_DESC_RXOR125 ;



 int PPC440SPE_ZERO_P ;
 int PPC440SPE_ZERO_Q ;
 int likely (struct ppc440spe_adma_desc_slot*) ;
 int ppc440spe_adma_dma2rxor_set_src (struct ppc440spe_adma_desc_slot*,int,int) ;
 int ppc440spe_desc_set_src_addr (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int ,int,int) ;
 struct ppc440spe_adma_desc_slot* ppc440spe_get_group_entry (struct ppc440spe_adma_desc_slot*,int) ;
 int test_bit (int ,int *) ;
 struct ppc440spe_adma_chan* to_ppc440spe_adma_chan (int ) ;

__attribute__((used)) static void ppc440spe_adma_pq_set_src(struct ppc440spe_adma_desc_slot *sw_desc,
  dma_addr_t addr, int index)
{
 struct ppc440spe_adma_chan *chan;
 dma_addr_t haddr = 0;
 struct ppc440spe_adma_desc_slot *iter = ((void*)0);

 chan = to_ppc440spe_adma_chan(sw_desc->async_tx.chan);

 switch (chan->device->id) {
 case 130:
 case 129:


  if (test_bit(PPC440SPE_DESC_RXOR, &sw_desc->flags)) {

   int iskip = test_bit(PPC440SPE_DESC_RXOR12,
    &sw_desc->flags) ? 2 : 3;

   if (index == 0) {




    if (test_bit(PPC440SPE_DESC_RXOR12,
      &sw_desc->flags))
     haddr = DMA_RXOR12 <<
      DMA_CUED_REGION_OFF;
    else if (test_bit(PPC440SPE_DESC_RXOR123,
        &sw_desc->flags))
     haddr = DMA_RXOR123 <<
      DMA_CUED_REGION_OFF;
    else if (test_bit(PPC440SPE_DESC_RXOR124,
        &sw_desc->flags))
     haddr = DMA_RXOR124 <<
      DMA_CUED_REGION_OFF;
    else if (test_bit(PPC440SPE_DESC_RXOR125,
        &sw_desc->flags))
     haddr = DMA_RXOR125 <<
      DMA_CUED_REGION_OFF;
    else
     BUG();
    haddr |= DMA_CUED_XOR_BASE;
    iter = ppc440spe_get_group_entry(sw_desc, 0);
   } else if (index < iskip) {




    iter = ((void*)0);
   } else {



    haddr = DMA_CUED_XOR_HB;
    iter = ppc440spe_get_group_entry(sw_desc,
        index - iskip + sw_desc->dst_cnt);
   }
  } else {
   int znum = 0;




   if (test_bit(PPC440SPE_ZERO_P, &sw_desc->flags))
    znum++;
   if (test_bit(PPC440SPE_ZERO_Q, &sw_desc->flags))
    znum++;

   haddr = DMA_CUED_XOR_HB;
   iter = ppc440spe_get_group_entry(sw_desc,
     index + znum);
  }

  if (likely(iter)) {
   ppc440spe_desc_set_src_addr(iter, chan, 0, haddr, addr);

   if (!index &&
       test_bit(PPC440SPE_DESC_RXOR, &sw_desc->flags) &&
       sw_desc->dst_cnt == 2) {



    iter = ppc440spe_get_group_entry(sw_desc, 1);
    ppc440spe_desc_set_src_addr(iter, chan, 0,
     haddr, addr);
   }
  }
  break;

 case 128:

  iter = sw_desc->group_head;
  if (iter->dst_cnt == 2) {

   ppc440spe_adma_dma2rxor_set_src(iter, index, addr);


   iter = ppc440spe_get_group_entry(sw_desc,
    sw_desc->descs_per_op);
  }
  ppc440spe_adma_dma2rxor_set_src(iter, index, addr);
  break;
 }
}
