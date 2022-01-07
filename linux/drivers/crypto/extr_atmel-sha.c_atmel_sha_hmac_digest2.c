
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t hash_size; int flags; } ;
struct atmel_sha_hmac_ctx {int* ipad; int* opad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int nbytes; int src; } ;


 int ATMEL_SHA_DMA_THRESHOLD ;
 int EINVAL ;
 int SHA_BCR ;
 int SHA_CR ;
 int SHA_CR_FIRST ;
 int SHA_CR_WUIEHV ;
 int SHA_CR_WUIHV ;
 int SHA_FLAGS_ALGO_MASK ;
 int SHA_MR ;
 int SHA_MR_DUALBUFF ;
 int SHA_MR_HMAC ;
 int SHA_MR_MODE_AUTO ;
 int SHA_MR_MODE_IDATAR0 ;
 int SHA_MSR ;
 int SHA_REG_DIN (size_t) ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int ) ;
 int atmel_sha_cpu_start (struct atmel_sha_dev*,int ,int,int,int,int ) ;
 scalar_t__ atmel_sha_dma_check_aligned (struct atmel_sha_dev*,int ,int) ;
 int atmel_sha_dma_start (struct atmel_sha_dev*,int ,int,int ) ;
 int atmel_sha_hmac_final_done ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int) ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;

__attribute__((used)) static int atmel_sha_hmac_digest2(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 size_t hs = ctx->hash_size;
 size_t i, num_words = hs / sizeof(u32);
 bool use_dma = 0;
 u32 mr;


 if (!req->nbytes)
  return atmel_sha_complete(dd, -EINVAL);


 if (req->nbytes > ATMEL_SHA_DMA_THRESHOLD &&
     atmel_sha_dma_check_aligned(dd, req->src, req->nbytes))
  use_dma = 1;


 atmel_sha_write(dd, SHA_CR, SHA_CR_WUIHV);
 for (i = 0; i < num_words; ++i)
  atmel_sha_write(dd, SHA_REG_DIN(i), hmac->ipad[i]);

 atmel_sha_write(dd, SHA_CR, SHA_CR_WUIEHV);
 for (i = 0; i < num_words; ++i)
  atmel_sha_write(dd, SHA_REG_DIN(i), hmac->opad[i]);


 mr = (SHA_MR_HMAC | SHA_MR_DUALBUFF);
 mr |= ctx->flags & SHA_FLAGS_ALGO_MASK;
 if (use_dma)
  mr |= SHA_MR_MODE_IDATAR0;
 else
  mr |= SHA_MR_MODE_AUTO;
 atmel_sha_write(dd, SHA_MR, mr);

 atmel_sha_write(dd, SHA_MSR, req->nbytes);
 atmel_sha_write(dd, SHA_BCR, req->nbytes);

 atmel_sha_write(dd, SHA_CR, SHA_CR_FIRST);


 if (use_dma)
  return atmel_sha_dma_start(dd, req->src, req->nbytes,
        atmel_sha_hmac_final_done);

 return atmel_sha_cpu_start(dd, req->src, req->nbytes, 0, 1,
       atmel_sha_hmac_final_done);
}
