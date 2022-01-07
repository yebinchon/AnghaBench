
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {scalar_t__ bufcnt; int error; int dd; } ;
struct s5p_hash_ctx {int dd; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 scalar_t__ BUFLEN ;
 int EINVAL ;
 struct s5p_hash_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct s5p_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memcpy (struct s5p_hash_reqctx*,void const*,scalar_t__) ;

__attribute__((used)) static int s5p_hash_import(struct ahash_request *req, const void *in)
{
 struct s5p_hash_reqctx *ctx = ahash_request_ctx(req);
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct s5p_hash_ctx *tctx = crypto_ahash_ctx(tfm);
 const struct s5p_hash_reqctx *ctx_in = in;

 memcpy(ctx, in, sizeof(*ctx) + BUFLEN);
 if (ctx_in->bufcnt > BUFLEN) {
  ctx->error = 1;
  return -EINVAL;
 }

 ctx->dd = tctx->dd;
 ctx->error = 0;

 return 0;
}
