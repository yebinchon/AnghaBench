
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_chan {int state; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef enum sum_check_flags { ____Placeholder_sum_check_flags } sum_check_flags ;
typedef int dma_addr_t ;


 int IOAT_CHAN_DOWN ;
 struct dma_async_tx_descriptor* __ioat_prep_xor_lock (struct dma_chan*,int*,int ,int *,unsigned int,size_t,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 struct ioatdma_chan* to_ioat_chan (struct dma_chan*) ;

struct dma_async_tx_descriptor *
ioat_prep_xor_val(struct dma_chan *chan, dma_addr_t *src,
      unsigned int src_cnt, size_t len,
      enum sum_check_flags *result, unsigned long flags)
{
 struct ioatdma_chan *ioat_chan = to_ioat_chan(chan);

 if (test_bit(IOAT_CHAN_DOWN, &ioat_chan->state))
  return ((void*)0);




 *result = 0;

 return __ioat_prep_xor_lock(chan, result, src[0], &src[1],
         src_cnt - 1, len, flags);
}
