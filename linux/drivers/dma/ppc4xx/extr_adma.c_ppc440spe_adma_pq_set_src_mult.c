
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int chan; } ;
struct ppc440spe_adma_desc_slot {int dst_cnt; int descs_per_op; struct ppc440spe_adma_desc_slot* group_head; int flags; TYPE_1__ async_tx; } ;
struct ppc440spe_adma_chan {TYPE_2__* device; } ;
struct TYPE_4__ {int id; } ;


 int DMA_CDB_SG_DST1 ;
 int DMA_CDB_SG_DST2 ;
 int DMA_CDB_SG_SRC ;
 int DMA_CUED_MULT1_OFF ;
 int PPC440SPE_DESC_RXOR ;
 int PPC440SPE_DESC_RXOR12 ;



 int PPC440SPE_ZERO_P ;
 int PPC440SPE_ZERO_Q ;
 int likely (struct ppc440spe_adma_desc_slot*) ;
 int ppc440spe_adma_dma2rxor_set_mult (struct ppc440spe_adma_desc_slot*,int,unsigned char) ;
 int ppc440spe_desc_set_src_mult (struct ppc440spe_adma_desc_slot*,struct ppc440spe_adma_chan*,int ,int ,int) ;
 struct ppc440spe_adma_desc_slot* ppc440spe_get_group_entry (struct ppc440spe_adma_desc_slot*,int) ;
 int test_bit (int ,int *) ;
 struct ppc440spe_adma_chan* to_ppc440spe_adma_chan (int ) ;
 int unlikely (struct ppc440spe_adma_desc_slot*) ;

__attribute__((used)) static void ppc440spe_adma_pq_set_src_mult(
  struct ppc440spe_adma_desc_slot *sw_desc,
  unsigned char mult, int index, int dst_pos)
{
 struct ppc440spe_adma_chan *chan;
 u32 mult_idx, mult_dst;
 struct ppc440spe_adma_desc_slot *iter = ((void*)0), *iter1 = ((void*)0);

 chan = to_ppc440spe_adma_chan(sw_desc->async_tx.chan);

 switch (chan->device->id) {
 case 130:
 case 129:
  if (test_bit(PPC440SPE_DESC_RXOR, &sw_desc->flags)) {
   int region = test_bit(PPC440SPE_DESC_RXOR12,
     &sw_desc->flags) ? 2 : 3;

   if (index < region) {

    iter = ppc440spe_get_group_entry(sw_desc,
     sw_desc->dst_cnt - 1);
    if (sw_desc->dst_cnt == 2)
     iter1 = ppc440spe_get_group_entry(
       sw_desc, 0);

    mult_idx = DMA_CUED_MULT1_OFF + (index << 3);
    mult_dst = DMA_CDB_SG_SRC;
   } else {

    iter = ppc440spe_get_group_entry(sw_desc,
       index - region +
       sw_desc->dst_cnt);
    mult_idx = DMA_CUED_MULT1_OFF;
    mult_dst = dst_pos ? DMA_CDB_SG_DST2 :
           DMA_CDB_SG_DST1;
   }
  } else {
   int znum = 0;





   if (test_bit(PPC440SPE_ZERO_P, &sw_desc->flags))
    znum++;
   if (test_bit(PPC440SPE_ZERO_Q, &sw_desc->flags))
    znum++;

   iter = ppc440spe_get_group_entry(sw_desc, index + znum);
   mult_idx = DMA_CUED_MULT1_OFF;
   mult_dst = dst_pos ? DMA_CDB_SG_DST2 : DMA_CDB_SG_DST1;
  }

  if (likely(iter)) {
   ppc440spe_desc_set_src_mult(iter, chan,
    mult_idx, mult_dst, mult);

   if (unlikely(iter1)) {



    ppc440spe_desc_set_src_mult(iter1, chan,
     mult_idx, mult_dst, 1);
   }

  }
  break;

 case 128:
  iter = sw_desc->group_head;
  if (sw_desc->dst_cnt == 2) {

   ppc440spe_adma_dma2rxor_set_mult(iter, index, 1);


   iter = ppc440spe_get_group_entry(sw_desc,
          sw_desc->descs_per_op);
  }
  ppc440spe_adma_dma2rxor_set_mult(iter, index, mult);
  break;
 }
}
