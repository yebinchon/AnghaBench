
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t block_size; } ;
struct atmel_sha_hmac_ctx {int * ipad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 int SHA_REG_DIGEST (size_t) ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_hmac_compute_ipad_hash (struct atmel_sha_dev*) ;
 int atmel_sha_read (struct atmel_sha_dev*,int ) ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 size_t crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static int atmel_sha_hmac_prehash_key_done(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 size_t ds = crypto_ahash_digestsize(tfm);
 size_t bs = ctx->block_size;
 size_t i, num_words = ds / sizeof(u32);


 for (i = 0; i < num_words; ++i)
  hmac->ipad[i] = atmel_sha_read(dd, SHA_REG_DIGEST(i));
 memset((u8 *)hmac->ipad + ds, 0, bs - ds);
 return atmel_sha_hmac_compute_ipad_hash(dd);
}
