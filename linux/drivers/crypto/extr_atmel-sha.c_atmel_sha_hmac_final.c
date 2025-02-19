
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t block_size; size_t hash_size; size_t flags; scalar_t__ digest; } ;
struct atmel_sha_hmac_ctx {size_t* opad; } ;
struct atmel_sha_dev {int tmp; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 int SHA_BCR ;
 int SHA_CR ;
 size_t SHA_CR_FIRST ;
 size_t SHA_CR_WUIHV ;
 size_t SHA_FLAGS_ALGO_MASK ;
 int SHA_MR ;
 size_t SHA_MR_MODE_AUTO ;
 size_t SHA_MR_UIHV ;
 int SHA_MSR ;
 int SHA_REG_DIGEST (size_t) ;
 int SHA_REG_DIN (size_t) ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_cpu_start (struct atmel_sha_dev*,int *,size_t,int,int,int ) ;
 int atmel_sha_hmac_final_done ;
 size_t atmel_sha_read (struct atmel_sha_dev*,int ) ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,size_t) ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 size_t crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int sg_init_one (int *,size_t*,size_t) ;

__attribute__((used)) static int atmel_sha_hmac_final(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 u32 *digest = (u32 *)ctx->digest;
 size_t ds = crypto_ahash_digestsize(tfm);
 size_t bs = ctx->block_size;
 size_t hs = ctx->hash_size;
 size_t i, num_words;
 u32 mr;


 num_words = ds / sizeof(u32);
 for (i = 0; i < num_words; ++i)
  digest[i] = atmel_sha_read(dd, SHA_REG_DIGEST(i));


 atmel_sha_write(dd, SHA_CR, SHA_CR_WUIHV);
 num_words = hs / sizeof(u32);
 for (i = 0; i < num_words; ++i)
  atmel_sha_write(dd, SHA_REG_DIN(i), hmac->opad[i]);

 mr = SHA_MR_MODE_AUTO | SHA_MR_UIHV;
 mr |= (ctx->flags & SHA_FLAGS_ALGO_MASK);
 atmel_sha_write(dd, SHA_MR, mr);
 atmel_sha_write(dd, SHA_MSR, bs + ds);
 atmel_sha_write(dd, SHA_BCR, ds);
 atmel_sha_write(dd, SHA_CR, SHA_CR_FIRST);

 sg_init_one(&dd->tmp, digest, ds);
 return atmel_sha_cpu_start(dd, &dd->tmp, ds, 0, 1,
       atmel_sha_hmac_final_done);
}
