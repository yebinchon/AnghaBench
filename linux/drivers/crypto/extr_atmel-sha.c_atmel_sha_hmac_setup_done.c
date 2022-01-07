
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t hash_size; } ;
struct atmel_sha_hmac_ctx {int (* resume ) (struct atmel_sha_dev*) ;int hkey; int * opad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 int SHA_REG_DIGEST (size_t) ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_hmac_key_release (int *) ;
 int atmel_sha_read (struct atmel_sha_dev*,int ) ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int stub1 (struct atmel_sha_dev*) ;

__attribute__((used)) static int atmel_sha_hmac_setup_done(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 size_t hs = ctx->hash_size;
 size_t i, num_words = hs / sizeof(u32);

 for (i = 0; i < num_words; ++i)
  hmac->opad[i] = atmel_sha_read(dd, SHA_REG_DIGEST(i));
 atmel_sha_hmac_key_release(&hmac->hkey);
 return hmac->resume(dd);
}
