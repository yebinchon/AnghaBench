
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ahash {int dummy; } ;
struct atmel_sha_reqctx {int buflen; scalar_t__* digcnt; scalar_t__ bufcnt; int block_size; scalar_t__ flags; struct atmel_sha_dev* dd; } ;
struct atmel_sha_dev {int dev; } ;
struct atmel_sha_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;


 int EINVAL ;
 int SHA1_BLOCK_SIZE ;

 int SHA224_BLOCK_SIZE ;

 int SHA256_BLOCK_SIZE ;

 int SHA384_BLOCK_SIZE ;

 int SHA512_BLOCK_SIZE ;

 int SHA_BUFFER_LEN ;
 scalar_t__ SHA_FLAGS_SHA1 ;
 scalar_t__ SHA_FLAGS_SHA224 ;
 scalar_t__ SHA_FLAGS_SHA256 ;
 scalar_t__ SHA_FLAGS_SHA384 ;
 scalar_t__ SHA_FLAGS_SHA512 ;
 struct atmel_sha_reqctx* ahash_request_ctx (struct ahash_request*) ;
 struct atmel_sha_dev* atmel_sha_find_dev (struct atmel_sha_ctx*) ;
 struct atmel_sha_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static int atmel_sha_init(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct atmel_sha_ctx *tctx = crypto_ahash_ctx(tfm);
 struct atmel_sha_reqctx *ctx = ahash_request_ctx(req);
 struct atmel_sha_dev *dd = atmel_sha_find_dev(tctx);

 ctx->dd = dd;

 ctx->flags = 0;

 dev_dbg(dd->dev, "init: digest size: %d\n",
  crypto_ahash_digestsize(tfm));

 switch (crypto_ahash_digestsize(tfm)) {
 case 132:
  ctx->flags |= SHA_FLAGS_SHA1;
  ctx->block_size = SHA1_BLOCK_SIZE;
  break;
 case 131:
  ctx->flags |= SHA_FLAGS_SHA224;
  ctx->block_size = SHA224_BLOCK_SIZE;
  break;
 case 130:
  ctx->flags |= SHA_FLAGS_SHA256;
  ctx->block_size = SHA256_BLOCK_SIZE;
  break;
 case 129:
  ctx->flags |= SHA_FLAGS_SHA384;
  ctx->block_size = SHA384_BLOCK_SIZE;
  break;
 case 128:
  ctx->flags |= SHA_FLAGS_SHA512;
  ctx->block_size = SHA512_BLOCK_SIZE;
  break;
 default:
  return -EINVAL;
  break;
 }

 ctx->bufcnt = 0;
 ctx->digcnt[0] = 0;
 ctx->digcnt[1] = 0;
 ctx->buflen = SHA_BUFFER_LEN;

 return 0;
}
