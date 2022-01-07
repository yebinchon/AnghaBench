
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_hash_ctx {int inter_digestsize; } ;
struct ahash_req_ctx {scalar_t__ opad_digest_dma_addr; scalar_t__ digest_bytes_len_dma_addr; scalar_t__ digest_buff_dma_addr; } ;


 int DMA_BIDIRECTIONAL ;
 int HASH_MAX_LEN_SIZE ;
 int dev_dbg (struct device*,char*,scalar_t__*) ;
 int dma_unmap_single (struct device*,scalar_t__,int ,int ) ;

__attribute__((used)) static void cc_unmap_req(struct device *dev, struct ahash_req_ctx *state,
    struct cc_hash_ctx *ctx)
{
 if (state->digest_buff_dma_addr) {
  dma_unmap_single(dev, state->digest_buff_dma_addr,
     ctx->inter_digestsize, DMA_BIDIRECTIONAL);
  dev_dbg(dev, "Unmapped digest-buffer: digest_buff_dma_addr=%pad\n",
   &state->digest_buff_dma_addr);
  state->digest_buff_dma_addr = 0;
 }
 if (state->digest_bytes_len_dma_addr) {
  dma_unmap_single(dev, state->digest_bytes_len_dma_addr,
     HASH_MAX_LEN_SIZE, DMA_BIDIRECTIONAL);
  dev_dbg(dev, "Unmapped digest-bytes-len buffer: digest_bytes_len_dma_addr=%pad\n",
   &state->digest_bytes_len_dma_addr);
  state->digest_bytes_len_dma_addr = 0;
 }
 if (state->opad_digest_dma_addr) {
  dma_unmap_single(dev, state->opad_digest_dma_addr,
     ctx->inter_digestsize, DMA_BIDIRECTIONAL);
  dev_dbg(dev, "Unmapped opad-digest: opad_digest_dma_addr=%pad\n",
   &state->opad_digest_dma_addr);
  state->opad_digest_dma_addr = 0;
 }
}
