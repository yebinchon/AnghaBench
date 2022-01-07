
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {size_t block_size; size_t hash_size; size_t* digcnt; int digest; int flags; scalar_t__ bufcnt; } ;
struct atmel_sha_hmac_ctx {int ipad; } ;
struct atmel_sha_dev {struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;


 int SHA_FLAGS_RESTORE ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 int atmel_sha_complete (struct atmel_sha_dev*,int ) ;
 struct atmel_sha_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memcpy (int ,int ,size_t) ;

__attribute__((used)) static int atmel_sha_hmac_init_done(struct atmel_sha_dev *dd)
{
 struct ahash_request *req = dd->req;
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 size_t bs = ctx->block_size;
 size_t hs = ctx->hash_size;

 ctx->bufcnt = 0;
 ctx->digcnt[0] = bs;
 ctx->digcnt[1] = 0;
 ctx->flags |= SHA_FLAGS_RESTORE;
 memcpy(ctx->digest, hmac->ipad, hs);
 return atmel_sha_complete(dd, 0);
}
