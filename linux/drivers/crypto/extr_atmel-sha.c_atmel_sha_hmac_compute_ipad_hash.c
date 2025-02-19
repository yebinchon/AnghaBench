
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t block_size; } ;
struct atmel_sha_hmac_ctx {int* opad; int* ipad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_cpu_hash (struct atmel_sha_dev*,int*,size_t,int,int ) ;
 int atmel_sha_hmac_compute_opad_hash ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memcpy (int*,int*,size_t) ;

__attribute__((used)) static int atmel_sha_hmac_compute_ipad_hash(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 size_t bs = ctx->block_size;
 size_t i, num_words = bs / sizeof(u32);

 memcpy(hmac->opad, hmac->ipad, bs);
 for (i = 0; i < num_words; ++i) {
  hmac->ipad[i] ^= 0x36363636;
  hmac->opad[i] ^= 0x5c5c5c5c;
 }

 return atmel_sha_cpu_hash(dd, hmac->ipad, bs, 0,
      atmel_sha_hmac_compute_opad_hash);
}
