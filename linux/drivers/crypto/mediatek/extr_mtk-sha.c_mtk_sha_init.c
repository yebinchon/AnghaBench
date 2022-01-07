
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_reqctx {int flags; int ds; scalar_t__ bs; scalar_t__ bufcnt; int buffer; scalar_t__ digcnt; } ;
struct mtk_sha_hmac_ctx {int ipad; } ;
struct mtk_sha_ctx {int flags; struct mtk_sha_hmac_ctx* base; int buf; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 int EINVAL ;
 scalar_t__ SHA1_BLOCK_SIZE ;

 scalar_t__ SHA224_BLOCK_SIZE ;

 scalar_t__ SHA256_BLOCK_SIZE ;

 scalar_t__ SHA384_BLOCK_SIZE ;

 scalar_t__ SHA512_BLOCK_SIZE ;

 int SHA_FLAGS_HMAC ;
 int SHA_FLAGS_SHA1 ;
 int SHA_FLAGS_SHA224 ;
 int SHA_FLAGS_SHA256 ;
 int SHA_FLAGS_SHA384 ;
 int SHA_FLAGS_SHA512 ;
 struct mtk_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct mtk_sha_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int mtk_sha_init(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct mtk_sha_ctx *tctx = crypto_ahash_ctx(tfm);
 struct mtk_sha_reqctx *ctx = ahash_request_ctx(req);

 ctx->flags = 0;
 ctx->ds = crypto_ahash_digestsize(tfm);

 switch (ctx->ds) {
 case 132:
  ctx->flags |= SHA_FLAGS_SHA1;
  ctx->bs = SHA1_BLOCK_SIZE;
  break;
 case 131:
  ctx->flags |= SHA_FLAGS_SHA224;
  ctx->bs = SHA224_BLOCK_SIZE;
  break;
 case 130:
  ctx->flags |= SHA_FLAGS_SHA256;
  ctx->bs = SHA256_BLOCK_SIZE;
  break;
 case 129:
  ctx->flags |= SHA_FLAGS_SHA384;
  ctx->bs = SHA384_BLOCK_SIZE;
  break;
 case 128:
  ctx->flags |= SHA_FLAGS_SHA512;
  ctx->bs = SHA512_BLOCK_SIZE;
  break;
 default:
  return -EINVAL;
 }

 ctx->bufcnt = 0;
 ctx->digcnt = 0;
 ctx->buffer = tctx->buf;

 if (tctx->flags & SHA_FLAGS_HMAC) {
  struct mtk_sha_hmac_ctx *bctx = tctx->base;

  memcpy(ctx->buffer, bctx->ipad, ctx->bs);
  ctx->bufcnt = ctx->bs;
  ctx->flags |= SHA_FLAGS_HMAC;
 }

 return 0;
}
