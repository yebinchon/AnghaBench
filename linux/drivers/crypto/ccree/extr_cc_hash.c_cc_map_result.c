
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ahash_req_ctx {int digest_result_dma_addr; int digest_result_buff; } ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int dev_dbg (struct device*,char*,unsigned int,int ,int *) ;
 int dev_err (struct device*,char*,unsigned int) ;
 int dma_map_single (struct device*,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;

__attribute__((used)) static int cc_map_result(struct device *dev, struct ahash_req_ctx *state,
    unsigned int digestsize)
{
 state->digest_result_dma_addr =
  dma_map_single(dev, state->digest_result_buff,
          digestsize, DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, state->digest_result_dma_addr)) {
  dev_err(dev, "Mapping digest result buffer %u B for DMA failed\n",
   digestsize);
  return -ENOMEM;
 }
 dev_dbg(dev, "Mapped digest result buffer %u B at va=%pK to dma=%pad\n",
  digestsize, state->digest_result_buff,
  &state->digest_result_dma_addr);

 return 0;
}
