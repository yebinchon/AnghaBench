
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum sum_check_flags { ____Placeholder_sum_check_flags } sum_check_flags ;
typedef scalar_t__ dma_addr_t ;


 unsigned long DMA_PREP_PQ_DISABLE_Q ;
 struct dma_async_tx_descriptor* ppc440spe_adma_prep_dma_pqzero_sum (struct dma_chan*,scalar_t__*,scalar_t__*,unsigned int,int ,size_t,int*,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *ppc440spe_adma_prep_dma_xor_zero_sum(
  struct dma_chan *chan, dma_addr_t *src, unsigned int src_cnt,
  size_t len, enum sum_check_flags *result, unsigned long flags)
{
 struct dma_async_tx_descriptor *tx;
 dma_addr_t pq[2];


 pq[0] = src[0];
 pq[1] = 0;
 flags |= DMA_PREP_PQ_DISABLE_Q;

 tx = ppc440spe_adma_prep_dma_pqzero_sum(chan, pq, &src[1],
      src_cnt - 1, 0, len,
      result, flags);
 return tx;
}
