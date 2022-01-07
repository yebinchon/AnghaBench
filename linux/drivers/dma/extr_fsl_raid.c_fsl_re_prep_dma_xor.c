
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef int dma_addr_t ;


 struct dma_async_tx_descriptor* fsl_re_prep_dma_genq (struct dma_chan*,int ,int *,unsigned int,int *,size_t,unsigned long) ;

__attribute__((used)) static struct dma_async_tx_descriptor *fsl_re_prep_dma_xor(
  struct dma_chan *chan, dma_addr_t dest, dma_addr_t *src,
  unsigned int src_cnt, size_t len, unsigned long flags)
{

 return fsl_re_prep_dma_genq(chan, dest, src, src_cnt, ((void*)0), len, flags);
}
