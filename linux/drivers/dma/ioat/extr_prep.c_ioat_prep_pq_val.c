
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int state; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum sum_check_flags { ____Placeholder_sum_check_flags } sum_check_flags ;
typedef int dma_addr_t ;


 unsigned long DMA_PREP_PQ_DISABLE_P ;
 unsigned long DMA_PREP_PQ_DISABLE_Q ;
 int IOAT_CHAN_DOWN ;
 struct dma_async_tx_descriptor* __ioat_prep_pq16_lock (struct dma_chan*,int*,int *,int *,unsigned int,unsigned char const*,size_t,unsigned long) ;
 struct dma_async_tx_descriptor* __ioat_prep_pq_lock (struct dma_chan*,int*,int *,int *,unsigned int,unsigned char const*,size_t,unsigned long) ;
 int src_cnt_flags (unsigned int,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

struct dma_async_tx_descriptor *
ioat_prep_pq_val(struct dma_chan *chan, dma_addr_t *pq, dma_addr_t *src,
    unsigned int src_cnt, const unsigned char *scf, size_t len,
    enum sum_check_flags *pqres, unsigned long flags)
{
 struct ioatdma_chan *ioat_chan = to_ioat_chan(chan);

 if (test_bit(IOAT_CHAN_DOWN, &ioat_chan->state))
  return ((void*)0);


 if (flags & DMA_PREP_PQ_DISABLE_P)
  pq[0] = pq[1];
 if (flags & DMA_PREP_PQ_DISABLE_Q)
  pq[1] = pq[0];




 *pqres = 0;

 return src_cnt_flags(src_cnt, flags) > 8 ?
  __ioat_prep_pq16_lock(chan, pqres, pq, src, src_cnt, scf, len,
           flags) :
  __ioat_prep_pq_lock(chan, pqres, pq, src, src_cnt, scf, len,
         flags);
}
