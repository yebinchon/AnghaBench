
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ctx {struct device* dev; } ;
struct talitos_ahash_req_ctx {int first; unsigned int hw_context_size; int hw_context; scalar_t__ swinit; scalar_t__ nbuf; scalar_t__ buf_idx; } ;
struct device {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 scalar_t__ SHA256_DIGEST_SIZE ;
 unsigned int TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256 ;
 unsigned int TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512 ;
 struct talitos_ahash_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct talitos_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 scalar_t__ crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dma_map_single (struct device*,int ,unsigned int,int ) ;
 int dma_unmap_single (struct device*,int ,unsigned int,int ) ;

__attribute__((used)) static int ahash_init(struct ahash_request *areq)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_ahash_ctx(tfm);
 struct device *dev = ctx->dev;
 struct talitos_ahash_req_ctx *req_ctx = ahash_request_ctx(areq);
 unsigned int size;
 dma_addr_t dma;


 req_ctx->buf_idx = 0;
 req_ctx->nbuf = 0;
 req_ctx->first = 1;
 req_ctx->swinit = 0;
 size = (crypto_ahash_digestsize(tfm) <= SHA256_DIGEST_SIZE)
   ? TALITOS_MDEU_CONTEXT_SIZE_MD5_SHA1_SHA256
   : TALITOS_MDEU_CONTEXT_SIZE_SHA384_SHA512;
 req_ctx->hw_context_size = size;

 dma = dma_map_single(dev, req_ctx->hw_context, req_ctx->hw_context_size,
        DMA_TO_DEVICE);
 dma_unmap_single(dev, dma, req_ctx->hw_context_size, DMA_TO_DEVICE);

 return 0;
}
