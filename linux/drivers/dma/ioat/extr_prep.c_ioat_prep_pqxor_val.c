
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int state; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum sum_check_flags { ____Placeholder_sum_check_flags } sum_check_flags ;
typedef int dma_addr_t ;


 unsigned long DMA_PREP_PQ_DISABLE_Q ;
 int IOAT_CHAN_DOWN ;
 int MAX_SCF ;
 struct dma_async_tx_descriptor* __ioat_prep_pq16_lock (struct dma_chan*,int*,int *,int *,unsigned int,unsigned char*,size_t,unsigned long) ;
 struct dma_async_tx_descriptor* __ioat_prep_pq_lock (struct dma_chan*,int*,int *,int *,unsigned int,unsigned char*,size_t,unsigned long) ;
 int memset (unsigned char*,int ,unsigned int) ;
 int src_cnt_flags (unsigned int,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

struct dma_async_tx_descriptor *
ioat_prep_pqxor_val(struct dma_chan *chan, dma_addr_t *src,
       unsigned int src_cnt, size_t len,
       enum sum_check_flags *result, unsigned long flags)
{
 unsigned char scf[MAX_SCF];
 dma_addr_t pq[2];
 struct ioatdma_chan *ioat_chan = to_ioat_chan(chan);

 if (test_bit(IOAT_CHAN_DOWN, &ioat_chan->state))
  return ((void*)0);

 if (src_cnt > MAX_SCF)
  return ((void*)0);




 *result = 0;

 memset(scf, 0, src_cnt);
 pq[0] = src[0];
 flags |= DMA_PREP_PQ_DISABLE_Q;
 pq[1] = pq[0];

 return src_cnt_flags(src_cnt, flags) > 8 ?
  __ioat_prep_pq16_lock(chan, result, pq, &src[1], src_cnt - 1,
           scf, len, flags) :
  __ioat_prep_pq_lock(chan, result, pq, &src[1], src_cnt - 1,
         scf, len, flags);
}
