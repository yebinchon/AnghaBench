
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dma_chan {scalar_t__ chan_id; } ;
typedef enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;


 int DMA_PQ ;
 int DMA_PQ_VAL ;
 scalar_t__ PPC440SPE_XOR_ID ;
 scalar_t__ likely (int) ;
 scalar_t__ ppc440spe_can_rxor (struct page**,int,size_t) ;
 int ppc440spe_chan_is_busy (int ) ;
 int ppc440spe_r6_enabled ;
 int to_ppc440spe_adma_chan (struct dma_chan*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ppc440spe_adma_estimate(struct dma_chan *chan,
 enum dma_transaction_type cap, struct page **dst_lst, int dst_cnt,
 struct page **src_lst, int src_cnt, size_t src_sz)
{
 int ef = 1;

 if (cap == DMA_PQ || cap == DMA_PQ_VAL) {



  if (unlikely(!ppc440spe_r6_enabled))
   return -1;
 }
 if (cap == DMA_PQ && chan->chan_id == PPC440SPE_XOR_ID) {

  if (dst_cnt == 1 && src_cnt == 2 && dst_lst[0] == src_lst[1])
   ef = 0;
  else if (ppc440spe_can_rxor(src_lst, src_cnt, src_sz))
   ef = 3;
  else
   ef = 0;
 }


 if (likely(ef) &&
     !ppc440spe_chan_is_busy(to_ppc440spe_adma_chan(chan)))
  ef++;

 return ef;
}
