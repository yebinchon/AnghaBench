
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int state; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef int dma_addr_t ;


 int BUG_ON (unsigned long) ;
 unsigned long DMA_PREP_PQ_DISABLE_P ;
 unsigned long DMA_PREP_PQ_DISABLE_Q ;
 int IOAT_CHAN_DOWN ;
 struct dma_async_tx_descriptor* __ioat_prep_pq16_lock (struct dma_chan*,int *,int *,int *,unsigned int,unsigned char const*,size_t,unsigned long) ;
 struct dma_async_tx_descriptor* __ioat_prep_pq_lock (struct dma_chan*,int *,int *,int *,unsigned int,unsigned char const*,size_t,unsigned long) ;
 int src_cnt_flags (unsigned int,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

struct dma_async_tx_descriptor *
ioat_prep_pq(struct dma_chan *chan, dma_addr_t *dst, dma_addr_t *src,
       unsigned int src_cnt, const unsigned char *scf, size_t len,
       unsigned long flags)
{
 struct ioatdma_chan *ioat_chan = to_ioat_chan(chan);

 if (test_bit(IOAT_CHAN_DOWN, &ioat_chan->state))
  return ((void*)0);


 if (flags & DMA_PREP_PQ_DISABLE_P)
  dst[0] = dst[1];
 if (flags & DMA_PREP_PQ_DISABLE_Q)
  dst[1] = dst[0];




 if ((flags & DMA_PREP_PQ_DISABLE_P) && src_cnt == 1) {
  dma_addr_t single_source[2];
  unsigned char single_source_coef[2];

  BUG_ON(flags & DMA_PREP_PQ_DISABLE_Q);
  single_source[0] = src[0];
  single_source[1] = src[0];
  single_source_coef[0] = scf[0];
  single_source_coef[1] = 0;

  return src_cnt_flags(src_cnt, flags) > 8 ?
   __ioat_prep_pq16_lock(chan, ((void*)0), dst, single_source,
            2, single_source_coef, len,
            flags) :
   __ioat_prep_pq_lock(chan, ((void*)0), dst, single_source, 2,
          single_source_coef, len, flags);

 } else {
  return src_cnt_flags(src_cnt, flags) > 8 ?
   __ioat_prep_pq16_lock(chan, ((void*)0), dst, src, src_cnt,
            scf, len, flags) :
   __ioat_prep_pq_lock(chan, ((void*)0), dst, src, src_cnt,
          scf, len, flags);
 }
}
