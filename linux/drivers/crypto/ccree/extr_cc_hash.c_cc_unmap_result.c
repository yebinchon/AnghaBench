
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct ahash_req_ctx {scalar_t__ digest_result_dma_addr; int digest_result_buff; } ;


 int DMA_BIDIRECTIONAL ;
 int dev_dbg (struct device*,char*,int ,scalar_t__*,unsigned int) ;
 int dma_unmap_single (struct device*,scalar_t__,unsigned int,int ) ;
 int memcpy (int *,int ,unsigned int) ;

__attribute__((used)) static void cc_unmap_result(struct device *dev, struct ahash_req_ctx *state,
       unsigned int digestsize, u8 *result)
{
 if (state->digest_result_dma_addr) {
  dma_unmap_single(dev, state->digest_result_dma_addr, digestsize,
     DMA_BIDIRECTIONAL);
  dev_dbg(dev, "unmpa digest result buffer va (%pK) pa (%pad) len %u\n",
   state->digest_result_buff,
   &state->digest_result_dma_addr, digestsize);
  memcpy(result, state->digest_result_buff, digestsize);
 }
 state->digest_result_dma_addr = 0;
}
