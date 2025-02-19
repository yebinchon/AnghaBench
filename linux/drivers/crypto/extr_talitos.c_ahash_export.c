
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_export_state {int nbuf; int to_hash_later; int last; int first; int swinit; int buf; int hw_context; } ;
struct talitos_ctx {struct device* dev; } ;
struct talitos_ahash_req_ctx {size_t buf_idx; int nbuf; int to_hash_later; int last; int first; int swinit; int * buf; int hw_context_size; int hw_context; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 struct talitos_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct talitos_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ahash_export(struct ahash_request *areq, void *out)
{
 struct talitos_ahash_req_ctx *req_ctx = ahash_request_ctx(areq);
 struct talitos_export_state *export = out;
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ahash_ctx(tfm);
 struct device *dev = ctx->dev;
 dma_addr_t dma;

 dma = dma_map_single(dev, req_ctx->hw_context, req_ctx->hw_context_size,
        DMA_FROM_DEVICE);
 dma_unmap_single(dev, dma, req_ctx->hw_context_size, DMA_FROM_DEVICE);

 memcpy(export->hw_context, req_ctx->hw_context,
        req_ctx->hw_context_size);
 memcpy(export->buf, req_ctx->buf[req_ctx->buf_idx], req_ctx->nbuf);
 export->swinit = req_ctx->swinit;
 export->first = req_ctx->first;
 export->last = req_ctx->last;
 export->to_hash_later = req_ctx->to_hash_later;
 export->nbuf = req_ctx->nbuf;

 return 0;
}
