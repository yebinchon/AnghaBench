
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hash_alg_common {int digestsize; } ;
struct dcp_sha_req_ctx {scalar_t__ fini; scalar_t__ init; } ;
struct dcp_dma_desc {int control0; scalar_t__ control1; scalar_t__ size; void* payload; scalar_t__ status; scalar_t__ destination; void* source; scalar_t__ next_cmd_addr; } ;
struct dcp_async_ctx {size_t chan; scalar_t__ alg; scalar_t__ fill; } ;
struct dcp {int dev; TYPE_1__* coh; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_2__ {int sha_out_buf; int sha_in_buf; struct dcp_dma_desc* desc; } ;


 int DCP_BUF_SZ ;
 int DCP_SHA_PAY_SZ ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MXS_DCP_CONTROL0_DECR_SEMAPHORE ;
 int MXS_DCP_CONTROL0_ENABLE_HASH ;
 int MXS_DCP_CONTROL0_HASH_INIT ;
 int MXS_DCP_CONTROL0_HASH_TERM ;
 int MXS_DCP_CONTROL0_INTERRUPT ;
 scalar_t__ MXS_DCP_CONTROL1_HASH_SELECT_SHA1 ;
 struct dcp_sha_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct dcp_async_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 struct hash_alg_common* crypto_hash_alg_common (struct crypto_ahash*) ;
 void* dma_map_single (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,void*,int ,int ) ;
 struct dcp* global_sdcp ;
 int memcpy (int ,int const*,int ) ;
 int mxs_dcp_start_dma (struct dcp_async_ctx*) ;
 int * sha1_null_hash ;
 int * sha256_null_hash ;

__attribute__((used)) static int mxs_dcp_run_sha(struct ahash_request *req)
{
 struct dcp *sdcp = global_sdcp;
 int ret;

 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct dcp_async_ctx *actx = crypto_ahash_ctx(tfm);
 struct dcp_sha_req_ctx *rctx = ahash_request_ctx(req);
 struct dcp_dma_desc *desc = &sdcp->coh->desc[actx->chan];

 dma_addr_t digest_phys = 0;
 dma_addr_t buf_phys = dma_map_single(sdcp->dev, sdcp->coh->sha_in_buf,
          DCP_BUF_SZ, DMA_TO_DEVICE);


 desc->control0 = MXS_DCP_CONTROL0_DECR_SEMAPHORE |
      MXS_DCP_CONTROL0_INTERRUPT |
      MXS_DCP_CONTROL0_ENABLE_HASH;
 if (rctx->init)
  desc->control0 |= MXS_DCP_CONTROL0_HASH_INIT;

 desc->control1 = actx->alg;
 desc->next_cmd_addr = 0;
 desc->source = buf_phys;
 desc->destination = 0;
 desc->size = actx->fill;
 desc->payload = 0;
 desc->status = 0;




 if (rctx->init && rctx->fini && desc->size == 0) {
  struct hash_alg_common *halg = crypto_hash_alg_common(tfm);
  const uint8_t *sha_buf =
   (actx->alg == MXS_DCP_CONTROL1_HASH_SELECT_SHA1) ?
   sha1_null_hash : sha256_null_hash;
  memcpy(sdcp->coh->sha_out_buf, sha_buf, halg->digestsize);
  ret = 0;
  goto done_run;
 }


 if (rctx->fini) {
  digest_phys = dma_map_single(sdcp->dev, sdcp->coh->sha_out_buf,
          DCP_SHA_PAY_SZ, DMA_FROM_DEVICE);
  desc->control0 |= MXS_DCP_CONTROL0_HASH_TERM;
  desc->payload = digest_phys;
 }

 ret = mxs_dcp_start_dma(actx);

 if (rctx->fini)
  dma_unmap_single(sdcp->dev, digest_phys, DCP_SHA_PAY_SZ,
     DMA_FROM_DEVICE);

done_run:
 dma_unmap_single(sdcp->dev, buf_phys, DCP_BUF_SZ, DMA_TO_DEVICE);

 return ret;
}
