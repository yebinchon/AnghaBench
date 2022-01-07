
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_hash_ctx {int is_hmac; scalar_t__ hw_mode; scalar_t__ hash_mode; int inter_digestsize; } ;
struct ahash_req_ctx {void* digest_buff_dma_addr; void* digest_bytes_len_dma_addr; void* opad_digest_dma_addr; int opad_digest_buff; int digest_bytes_len; int digest_buff; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ DRV_CIPHER_XCBC_MAC ;
 scalar_t__ DRV_HASH_NULL ;
 int EINVAL ;
 int HASH_MAX_LEN_SIZE ;
 int dev_dbg (struct device*,char*,int ,int ,void**) ;
 int dev_err (struct device*,char*,int ,int ) ;
 void* dma_map_single (struct device*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,void*) ;
 int dma_unmap_single (struct device*,void*,int ,int ) ;

__attribute__((used)) static int cc_map_req(struct device *dev, struct ahash_req_ctx *state,
        struct cc_hash_ctx *ctx)
{
 bool is_hmac = ctx->is_hmac;

 state->digest_buff_dma_addr =
  dma_map_single(dev, state->digest_buff,
          ctx->inter_digestsize, DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, state->digest_buff_dma_addr)) {
  dev_err(dev, "Mapping digest len %d B at va=%pK for DMA failed\n",
   ctx->inter_digestsize, state->digest_buff);
  return -EINVAL;
 }
 dev_dbg(dev, "Mapped digest %d B at va=%pK to dma=%pad\n",
  ctx->inter_digestsize, state->digest_buff,
  &state->digest_buff_dma_addr);

 if (ctx->hw_mode != DRV_CIPHER_XCBC_MAC) {
  state->digest_bytes_len_dma_addr =
   dma_map_single(dev, state->digest_bytes_len,
           HASH_MAX_LEN_SIZE, DMA_BIDIRECTIONAL);
  if (dma_mapping_error(dev, state->digest_bytes_len_dma_addr)) {
   dev_err(dev, "Mapping digest len %u B at va=%pK for DMA failed\n",
    HASH_MAX_LEN_SIZE, state->digest_bytes_len);
   goto unmap_digest_buf;
  }
  dev_dbg(dev, "Mapped digest len %u B at va=%pK to dma=%pad\n",
   HASH_MAX_LEN_SIZE, state->digest_bytes_len,
   &state->digest_bytes_len_dma_addr);
 }

 if (is_hmac && ctx->hash_mode != DRV_HASH_NULL) {
  state->opad_digest_dma_addr =
   dma_map_single(dev, state->opad_digest_buff,
           ctx->inter_digestsize,
           DMA_BIDIRECTIONAL);
  if (dma_mapping_error(dev, state->opad_digest_dma_addr)) {
   dev_err(dev, "Mapping opad digest %d B at va=%pK for DMA failed\n",
    ctx->inter_digestsize,
    state->opad_digest_buff);
   goto unmap_digest_len;
  }
  dev_dbg(dev, "Mapped opad digest %d B at va=%pK to dma=%pad\n",
   ctx->inter_digestsize, state->opad_digest_buff,
   &state->opad_digest_dma_addr);
 }

 return 0;

unmap_digest_len:
 if (state->digest_bytes_len_dma_addr) {
  dma_unmap_single(dev, state->digest_bytes_len_dma_addr,
     HASH_MAX_LEN_SIZE, DMA_BIDIRECTIONAL);
  state->digest_bytes_len_dma_addr = 0;
 }
unmap_digest_buf:
 if (state->digest_buff_dma_addr) {
  dma_unmap_single(dev, state->digest_buff_dma_addr,
     ctx->inter_digestsize, DMA_BIDIRECTIONAL);
  state->digest_buff_dma_addr = 0;
 }

 return -EINVAL;
}
